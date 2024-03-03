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

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

char* handle_A(){
    return "A";
}

char* handle_B(){
    return "B";
}

void bitmask_model(){
    int rByte;
    rByte = U1RXREG & 0xFF;

     switch((uint8_t) rByte){
            case 0x1: handle_A(); break;
            case 0x2: handle_B(); break;
            case 0x3: UART1_Write("0x3\n", 4); break;
            default: break;
     }
}

void passthrough_model(){
    U1BRG = (U1BRG & 0xFFFFFFF8) | 2;
}

int identity_model(){
    int rByte;
    rByte = U1RXREG;
    return rByte & 0xFF;
}


void set_model(){
        int rByte;
        rByte = U1RXREG;
        // set model
        switch((uint8_t)rByte){
            case 0x1: handle_A(); break;
            case 0x2: handle_B(); break;
            case 0x3: UART1_Write("0x3\n", 4); break;
            default: break;
        }
        
        if(U1RXREG == 0x100){
            handle_A();
        }
        else if(U1RXREG == 0x200){
            handle_B();
        }else {
            UART1_Write("Test\n", 5);
        }
}

uint32_t passthrough_in_a_func_call(uint32_t rByte){
    // passthrough
    return (rByte & 0xFFFFFFF8) | 2;
    
}

void identity_in_a_func_call(uint32_t rByte){
    // identity
    UART1_Write(&rByte, 4);
}

void bitmask_in_a_func_call(uint32_t rByte){
    rByte &= 0xFF;

     switch(rByte){
            case 0x1: handle_A(); break;
            case 0x2: handle_B(); break;
            case 0x3: UART1_Write("0x3\n", 4); break;
            default: break;
     }
}

void set_in_a_func_call(uint32_t rByte){
//        switch(rByte){
//            case 0x1: handle_A(); break;
//            case 0x2: handle_B(); break;
//            case 0x3: UART1_Write("0x3\n", 4); break;
//            default: break;
//        }
        
        if(rByte == 0x100){
            handle_A();
        }
        else if(rByte == 0x200){
            handle_B();
        }else {
            UART1_Write("Test\n", 5);
        }
}

uint32_t long_loop(){
    int rByte;
    for (int i = 0; i < 1000; i++){
        if (i == 750){
            rByte = U1RXREG;
            return rByte;
        }
    }
    
    return 0;
}

void out_of_scope(uint32_t data){
    data += 1;
}


int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );

    while ( true )
    {
        /* UART1_ReceiverIsReady */
        while(_U1STA_URXDA_MASK != (U1STA & _U1STA_URXDA_MASK));
        

        set_model();
        bitmask_model();
        passthrough_model();
        identity_model();
        
        
        uint32_t data;
        U1RXREG = passthrough_in_a_func_call(U1RXREG);
        identity_in_a_func_call(U1RXREG);
        bitmask_in_a_func_call(U1RXREG);
        set_in_a_func_call(U1RXREG);
        
        data = long_loop();
        
        data += 1;
        
        data = U1RXREG;
        out_of_scope(data);
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

