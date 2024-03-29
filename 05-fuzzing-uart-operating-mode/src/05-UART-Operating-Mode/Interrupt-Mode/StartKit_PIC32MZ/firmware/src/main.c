/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "bme280_definitions.h"
#include "bme280_driver.h"


#define PERIOD_12MS                            4686U // 100MS 39061U
#define PERIOD_25MS                              9764U // 50MS 19530U
#define PERIOD_50MS                                19530U // 25MS 9764U
#define PERIOD_100MS                               39061U // 12MS 4686U

#define SWITCH_PRESSED_STATE                    0   // Active LOW switch

#define MAX_I2C_TX_BUFFER_SIZE                  100
#define MAX_I2C_RX_BUFFER_SIZE                  100

typedef struct
{
    volatile bool                   isBufferCompleteEvent;
    uint8_t                         slaveID;
    int16_t                         temperature;
    uint8_t                         txBuffer[MAX_I2C_TX_BUFFER_SIZE];
    uint8_t                         rxBuffer[MAX_I2C_RX_BUFFER_SIZE];
}BME_SENSOR_DATA;    
static BME_SENSOR_DATA BME280SensorData;

typedef enum
{
    TEMP_SAMPLING_RATE_12MS = 0,
    TEMP_SAMPLING_RATE_25MS = 1,
    TEMP_SAMPLING_RATE_50MS = 2,
    TEMP_SAMPLING_RATE_100MS = 3,
} TEMP_SAMPLING_RATE;
static TEMP_SAMPLING_RATE tempSampleRate = TEMP_SAMPLING_RATE_12MS;

static volatile bool isTmr2Expired = false;
static volatile bool changeTempSamplingRate = false;
static volatile bool isUARTTxComplete = false;
static uint16_t      temperatureVal;
static uint8_t __attribute__ ((aligned (16))) uartTxBuffer[100] = {0};
static volatile bool isUARTBufferCompleteEvent = false; 

static void S1_User_Handler(GPIO_PIN pin, uintptr_t context)
{
    if(S1_Get() == SWITCH_PRESSED_STATE)
    {
        changeTempSamplingRate = true;      
    }
}

static void tmr1EventHandler (uint32_t intCause, uintptr_t context)
{
    isTmr2Expired = true;
}

static void I2CBufferEventHandler(uintptr_t context)
{        
    if (I2C1_ErrorGet() == I2C_ERROR_NONE)
    {
        BME280SensorData.isBufferCompleteEvent = true;
    }
}

static void UARTDmaChannelHandler(DMAC_TRANSFER_EVENT event, uintptr_t contextHandle)
{
    if (event == DMAC_TRANSFER_EVENT_COMPLETE)
    {
        isUARTTxComplete = true;
    }
}

static void UARTBufferEventHandler(uintptr_t contextHandle)
{
    if(UART2_ErrorGet() == UART_ERROR_NONE)
        isUARTBufferCompleteEvent = true;
}


static bool BME280Sensor_WriteReg(uint8_t wrAddr, uint8_t wrData) 
{    
    BME280SensorData.txBuffer[0]            = wrAddr;
    BME280SensorData.txBuffer[1]            = wrData;
    BME280SensorData.isBufferCompleteEvent  = false;
    
    I2C1_Write(BME280SensorData.slaveID, BME280SensorData.txBuffer, 2);
    
   // while(false == BME280SensorData.isBufferCompleteEvent); //DICE
    
    return true;
}

static uint8_t BME280Sensor_ReadReg(uint8_t rAddr) 
{
    BME280SensorData.txBuffer[0]            = rAddr;
    BME280SensorData.isBufferCompleteEvent  = false;
    
    I2C1_WriteRead(BME280SensorData.slaveID, BME280SensorData.txBuffer, 1, BME280SensorData.rxBuffer, 1);
    
    //while(false == BME280SensorData.isBufferCompleteEvent); //DICE
            
    return BME280SensorData.rxBuffer[0];    
}

static bool BME280Sensor_Read(uint8_t rAddr, uint8_t* const pReadBuffer, uint8_t nBytes) 
{
    BME280SensorData.txBuffer[0]            = rAddr;
    BME280SensorData.isBufferCompleteEvent  = false;
    
    I2C1_WriteRead(BME280SensorData.slaveID, BME280SensorData.txBuffer, 1, pReadBuffer, nBytes);
    
    //while(false == BME280SensorData.isBufferCompleteEvent); //DICE
            
    return true;
}

void BME280Sensor_Initialize(void)
{
    BME280SensorData.temperature   = 0;
    BME280SensorData.slaveID        = BME280_I2C_ADDRESS;
    BME280SensorData.isBufferCompleteEvent = false;
    
    /* Register with BME280 sensor */        
    BME280_RegisterDrvWriteReg(BME280Sensor_WriteReg);
    BME280_RegisterDrvReadReg(BME280Sensor_ReadReg);        
    BME280_RegisterDrvRead(BME280Sensor_Read);

    BME280_SoftReset();
    /* 100 m.sec delay */
    CORETIMER_DelayMs(100);

    if (BME280_CHIP_ID != BME280_ID_Get())
    {
        //while(1);       /* Error Occurred */ DICE
    }
    BME280_CalibParams_Get();
    BME280_SetOversampling(BME280_PARAM_TEMP, BME280_OVERSAMPLING_1X);
    BME280_PowerMode_Set(BME280_NORMAL_MODE);
}
#define PASSWORD_LEN 8
char data[4*PASSWORD_LEN] = "";

void PasswordDiscovery(){
    int index = 0;
    if (*(data + index) != 'P') return;
    index++;
    if (*(data + index) != 'A') return;
    index++;
    if (*(data + index) != 'S') return;
    index++;
    if (*(data + index) != 'S') return;
    index++;
    if (*(data + index) != 'W') return;
    index++;
    if (*(data + index) != 'O') return;        
    index++;
    if (*(data + index) != 'R') return;
    index++;
    if (*(data + index) != 'D') return;        
    index++;
    if (*(data + index) != '\n') return;         
    void (*evil_read)(void) = (void (*)())0x61616161;
    evil_read();    
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    I2C1_CallbackRegister(I2CBufferEventHandler, 0);
    DMAC_ChannelCallbackRegister(DMAC_CHANNEL_0, UARTDmaChannelHandler, 0);
    TMR2_CallbackRegister(tmr1EventHandler, 0);
    GPIO_PinInterruptCallbackRegister(GPIO_PIN_RB12, S1_User_Handler, 0);
    GPIO_PinInterruptEnable(GPIO_PIN_RB12);
    UART2_ReadCallbackRegister(UARTBufferEventHandler, 0);
    
    BME280Sensor_Initialize();
    /* Start the timer 2 */
    TMR2_Initialize();
    TMR2_Start();
    isTmr2Expired = true; //Forced to execute for DICE analysis
    while ( true )
    {
        UART2_Read(data, PASSWORD_LEN);
        if (isUARTBufferCompleteEvent) {
            isUARTBufferCompleteEvent = false;
            PasswordDiscovery();
        }
        if (true == isTmr2Expired)
        {
            isTmr2Expired       = false;
            BME280_ReadRawWeatherData();

            /* The getting temperature is in DegC and resolution is 0.01 DegC. 
             * It means, if the output value is 5123 equals to 51.23 DegC */
            BME280SensorData.temperature   = BME280_GetTempReading();
            if(changeTempSamplingRate == false)
            {
                /* Celcius to Fahrenheit (�C to �F) Conversion (�F = (�C � 9/5) + 32) */
                temperatureVal = ((BME280SensorData.temperature * 9 / 5) * 0.01) + 32;

                sprintf((char*)uartTxBuffer, "Temperature = %02d F\r\n", temperatureVal);
      
            }
            else
            {
                changeTempSamplingRate = false;
                TMR2_Stop();
                if(tempSampleRate == TEMP_SAMPLING_RATE_12MS)
                {
                    tempSampleRate = TEMP_SAMPLING_RATE_25MS;
                    sprintf((char*)uartTxBuffer, "Sampling Temperature every 1 second \r\n");
                    TMR2_PeriodSet(PERIOD_25MS);
                }
                else if(tempSampleRate == TEMP_SAMPLING_RATE_25MS)
                {
                    tempSampleRate = TEMP_SAMPLING_RATE_50MS;
                    sprintf((char*)uartTxBuffer, "Sampling Temperature every 2 seconds \r\n");        
                    TMR2_PeriodSet(PERIOD_50MS );                        
                }
                else if(tempSampleRate == TEMP_SAMPLING_RATE_50MS)
                {
                    tempSampleRate = TEMP_SAMPLING_RATE_100MS;
                    sprintf((char*)uartTxBuffer, "Sampling Temperature every 4 seconds \r\n");        
                    TMR2_PeriodSet(PERIOD_100MS);                                        
                }    
                else if(tempSampleRate == TEMP_SAMPLING_RATE_100MS)
                {
                   tempSampleRate = TEMP_SAMPLING_RATE_12MS;             
                   sprintf((char*)uartTxBuffer, "Sampling Temperature every 500 ms \r\n");        
                   TMR2_PeriodSet(PERIOD_12MS);
                }
                else
                {
                   ;
                }
                TMR2_Start();
            }
            DMAC_ChannelTransfer(DMAC_CHANNEL_0, (const void *)uartTxBuffer, \
                    strlen((const char*)uartTxBuffer), \
                    (const void *)&U2TXREG, 1, 1);
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

