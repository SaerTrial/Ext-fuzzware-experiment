/*******************************************************************************
* Copyright (C) 2020 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    task3.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "task3.h"
#include "definitions.h"
#include "portmacro.h"
#include <string.h>
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the TASK3_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

TASK3_DATA task3Data;
static SemaphoreHandle_t dataRxSemaphore = NULL;
extern SemaphoreHandle_t uartMutexLock;
// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************
void uartReadEventHandler(UART_EVENT event, uintptr_t context )
{
    if (event == UART_EVENT_READ_THRESHOLD_REACHED || event == UART_EVENT_READ_BUFFER_FULL)
    {
        BaseType_t xHigherPriorityTaskWoken;

        /* Unblock the task by releasing the semaphore. */
        xSemaphoreGiveFromISR( dataRxSemaphore, &xHigherPriorityTaskWoken );

        /* If xHigherPriorityTaskWoken was set to true you
        we should yield */

        portEND_SWITCHING_ISR( xHigherPriorityTaskWoken );
    }
}
// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void TASK3_Initialize ( void )

  Remarks:
    See prototype in task3.h.
 */

void TASK3_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    task3Data.state = TASK3_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


#define PS_DISCOVERY_LEN 9
uint8_t data[10*PS_DISCOVERY_LEN] = {0};


void PasswordDiscovery(){
    static int index = 0;

    index += UART2_Read(data + index, PS_DISCOVERY_LEN-index);

    if (index < 9) return;
 
    
    if (*(data + index) != 'P') { index = 0; return;}
    index++;
    if (*(data + index) != 'A') { index = 0; return;}
    index++;
    if (*(data + index) != 'S') { index = 0; return;}
    index++;
    if (*(data + index) != 'S') { index = 0; return;}
    index++;
    if (*(data + index) != 'W') { index = 0; return;}
    index++;
    if (*(data + index) != 'O') { index = 0; return;}      
    index++;
    if (*(data + index) != 'R') { index = 0; return;}
    index++;
    if (*(data + index) != 'D') { index = 0; return;}  
    index++;
    if (*(data + index) != '\n') { index = 0; return;}  
  
    void (*evil_read)(void) = (void (*)())0x61616161;
    evil_read(); 
        
}


/******************************************************************************
  Function:
    void TASK3_Tasks ( void )

  Remarks:
    See prototype in task3.h.
 */

void TASK3_Tasks ( void )
{
    bool status = false;
    TickType_t timeNow;

    UART2_ReadCallbackRegister(uartReadEventHandler, 0);
    UART2_ReadThresholdSet(PS_DISCOVERY_LEN);
    UART2_ReadNotificationEnable(true, false);

    dataRxSemaphore = xSemaphoreCreateBinary();

    if (dataRxSemaphore != NULL)
    {
        status = true;
    }

    while (status == true)
    {
        /* Block until a character is received on the terminal */
        if( xSemaphoreTake( dataRxSemaphore, portMAX_DELAY ) == pdTRUE )
        {
            /* Task3 is running (<-) now */
            xSemaphoreTake(uartMutexLock, portMAX_DELAY);
            UART2_Write((uint8_t*)"                      Tsk3-P3 <-\r\n", 34);
            xSemaphoreGive(uartMutexLock);

            PasswordDiscovery();

            /* Work done by task3 for 50 ticks */
            timeNow = xTaskGetTickCount();
            while ((xTaskGetTickCount() - timeNow) < 50);

            /* Task3 is exiting (->) now */
            xSemaphoreTake(uartMutexLock, portMAX_DELAY);
            UART2_Write((uint8_t*)"                      Tsk3-P3 ->\r\n", 34);
            xSemaphoreGive(uartMutexLock);
        }
    }
}


/*******************************************************************************
 End of File
 */
