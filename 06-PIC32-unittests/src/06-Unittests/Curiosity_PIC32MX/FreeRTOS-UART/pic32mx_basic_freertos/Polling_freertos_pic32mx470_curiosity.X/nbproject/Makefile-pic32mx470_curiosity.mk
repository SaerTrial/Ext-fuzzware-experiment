#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mx470_curiosity.mk)" "nbproject/Makefile-local-pic32mx470_curiosity.mk"
include nbproject/Makefile-local-pic32mx470_curiosity.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mx470_curiosity
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Polling_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Polling_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mx470_curiosity/bsp/bsp.c ../src/config/pic32mx470_curiosity/osal/osal_freertos.c ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart1.c ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c ../src/config/pic32mx470_curiosity/initialization.c ../src/config/pic32mx470_curiosity/interrupts.c ../src/config/pic32mx470_curiosity/interrupts_a.S ../src/config/pic32mx470_curiosity/exceptions.c ../src/config/pic32mx470_curiosity/freertos_hooks.c ../src/config/pic32mx470_curiosity/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/task1.c ../src/task2.c ../src/task3.c ../src/task4.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1866994462/bsp.o ${OBJECTDIR}/_ext/2042640400/osal_freertos.o ${OBJECTDIR}/_ext/1949220912/plib_clk.o ${OBJECTDIR}/_ext/296236899/plib_evic.o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ${OBJECTDIR}/_ext/295780128/plib_uart1.o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ${OBJECTDIR}/_ext/1130503790/initialization.o ${OBJECTDIR}/_ext/1130503790/interrupts.o ${OBJECTDIR}/_ext/1130503790/interrupts_a.o ${OBJECTDIR}/_ext/1130503790/exceptions.o ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o ${OBJECTDIR}/_ext/1130503790/tasks.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553248/port.o ${OBJECTDIR}/_ext/951553248/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/task1.o ${OBJECTDIR}/_ext/1360937237/task2.o ${OBJECTDIR}/_ext/1360937237/task3.o ${OBJECTDIR}/_ext/1360937237/task4.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1866994462/bsp.o.d ${OBJECTDIR}/_ext/2042640400/osal_freertos.o.d ${OBJECTDIR}/_ext/1949220912/plib_clk.o.d ${OBJECTDIR}/_ext/296236899/plib_evic.o.d ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d ${OBJECTDIR}/_ext/295780128/plib_uart1.o.d ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d ${OBJECTDIR}/_ext/1130503790/initialization.o.d ${OBJECTDIR}/_ext/1130503790/interrupts.o.d ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d ${OBJECTDIR}/_ext/1130503790/exceptions.o.d ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o.d ${OBJECTDIR}/_ext/1130503790/tasks.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/951553248/port.o.d ${OBJECTDIR}/_ext/951553248/port_asm.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/task1.o.d ${OBJECTDIR}/_ext/1360937237/task2.o.d ${OBJECTDIR}/_ext/1360937237/task3.o.d ${OBJECTDIR}/_ext/1360937237/task4.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1866994462/bsp.o ${OBJECTDIR}/_ext/2042640400/osal_freertos.o ${OBJECTDIR}/_ext/1949220912/plib_clk.o ${OBJECTDIR}/_ext/296236899/plib_evic.o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ${OBJECTDIR}/_ext/295780128/plib_uart1.o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ${OBJECTDIR}/_ext/1130503790/initialization.o ${OBJECTDIR}/_ext/1130503790/interrupts.o ${OBJECTDIR}/_ext/1130503790/interrupts_a.o ${OBJECTDIR}/_ext/1130503790/exceptions.o ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o ${OBJECTDIR}/_ext/1130503790/tasks.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553248/port.o ${OBJECTDIR}/_ext/951553248/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/task1.o ${OBJECTDIR}/_ext/1360937237/task2.o ${OBJECTDIR}/_ext/1360937237/task3.o ${OBJECTDIR}/_ext/1360937237/task4.o

# Source Files
SOURCEFILES=../src/config/pic32mx470_curiosity/bsp/bsp.c ../src/config/pic32mx470_curiosity/osal/osal_freertos.c ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart1.c ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c ../src/config/pic32mx470_curiosity/initialization.c ../src/config/pic32mx470_curiosity/interrupts.c ../src/config/pic32mx470_curiosity/interrupts_a.S ../src/config/pic32mx470_curiosity/exceptions.c ../src/config/pic32mx470_curiosity/freertos_hooks.c ../src/config/pic32mx470_curiosity/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/task1.c ../src/task2.c ../src/task3.c ../src/task4.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mx470_curiosity.mk ${DISTDIR}/Polling_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX470F512H
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32mx470_curiosity\p32MX470F512H.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1130503790/interrupts_a.o: ../src/config/pic32mx470_curiosity/interrupts_a.S  .generated_files/flags/pic32mx470_curiosity/fa72809b8540d686d90d4835e22cd95ae1c2fdf4 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.ok ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/1130503790/interrupts_a.o ../src/config/pic32mx470_curiosity/interrupts_a.S  -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1130503790/interrupts_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d" "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx470_curiosity/4c3bd1c396eb5dc62dcc0b4555ec007ff1ff8ffb .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.ok ${OBJECTDIR}/_ext/951553248/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/951553248/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553248/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553248/port_asm.o.d" "${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1130503790/interrupts_a.o: ../src/config/pic32mx470_curiosity/interrupts_a.S  .generated_files/flags/pic32mx470_curiosity/b2b25f0980c9f63c01e94356d4da70dd09048d0 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.ok ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/1130503790/interrupts_a.o ../src/config/pic32mx470_curiosity/interrupts_a.S  -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1130503790/interrupts_a.o.asm.d",--gdwarf-2,-I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d" "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx470_curiosity/3bb466eba880a37f496fdb6e9fdaf74aee2e078a .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.ok ${OBJECTDIR}/_ext/951553248/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/951553248/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553248/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d",--gdwarf-2,-I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553248/port_asm.o.d" "${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1866994462/bsp.o: ../src/config/pic32mx470_curiosity/bsp/bsp.c  .generated_files/flags/pic32mx470_curiosity/3420bacaa2a53bbfc10f2551f02515a8e3e78d65 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1866994462" 
	@${RM} ${OBJECTDIR}/_ext/1866994462/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1866994462/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1866994462/bsp.o.d" -o ${OBJECTDIR}/_ext/1866994462/bsp.o ../src/config/pic32mx470_curiosity/bsp/bsp.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2042640400/osal_freertos.o: ../src/config/pic32mx470_curiosity/osal/osal_freertos.c  .generated_files/flags/pic32mx470_curiosity/6b059e3a92662fa34839db2351457129a4fc926b .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2042640400" 
	@${RM} ${OBJECTDIR}/_ext/2042640400/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/2042640400/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2042640400/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/2042640400/osal_freertos.o ../src/config/pic32mx470_curiosity/osal/osal_freertos.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1949220912/plib_clk.o: ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx470_curiosity/39a8503ca6e81a0bdd75c90f13adb998710d048c .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1949220912" 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949220912/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1949220912/plib_clk.o ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296236899/plib_evic.o: ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx470_curiosity/515348afafe5e51df05ee308995b7bf8eece07b6 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296236899" 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296236899/plib_evic.o.d" -o ${OBJECTDIR}/_ext/296236899/plib_evic.o ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296183071/plib_gpio.o: ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx470_curiosity/5555ee257ffad18944a0bc5f49a6a5576cab5b5 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296183071" 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296183071/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/295780128/plib_uart1.o: ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mx470_curiosity/7503d44b9c447ed20d15fcb5114ef65a7bea0a27 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/295780128" 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/295780128/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/295780128/plib_uart1.o ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098930264/xc32_monitor.o: ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mx470_curiosity/e8910fdbd7754c76640a2c0e9341a0431708dd6d .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1098930264" 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/initialization.o: ../src/config/pic32mx470_curiosity/initialization.c  .generated_files/flags/pic32mx470_curiosity/abded621ce0c61c8b77e8361388035b2952cb436 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/initialization.o.d" -o ${OBJECTDIR}/_ext/1130503790/initialization.o ../src/config/pic32mx470_curiosity/initialization.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/interrupts.o: ../src/config/pic32mx470_curiosity/interrupts.c  .generated_files/flags/pic32mx470_curiosity/d704f90c4e66d339fb87a7590b67a10379246c4e .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts.o.d" -o ${OBJECTDIR}/_ext/1130503790/interrupts.o ../src/config/pic32mx470_curiosity/interrupts.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/exceptions.o: ../src/config/pic32mx470_curiosity/exceptions.c  .generated_files/flags/pic32mx470_curiosity/49b59a4b6a7f4d445115300f8a7e6db566dc0f40 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/exceptions.o.d" -o ${OBJECTDIR}/_ext/1130503790/exceptions.o ../src/config/pic32mx470_curiosity/exceptions.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/freertos_hooks.o: ../src/config/pic32mx470_curiosity/freertos_hooks.c  .generated_files/flags/pic32mx470_curiosity/138ffdaa67fc94d1afb0fc76e162e9ce8561e7b1 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o ../src/config/pic32mx470_curiosity/freertos_hooks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/tasks.o: ../src/config/pic32mx470_curiosity/tasks.c  .generated_files/flags/pic32mx470_curiosity/c964b38de297d583e100360a9c4831ab2d03714d .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/tasks.o.d" -o ${OBJECTDIR}/_ext/1130503790/tasks.o ../src/config/pic32mx470_curiosity/tasks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx470_curiosity/4fa287b35d93617328f4d0f890e54383dffcd37 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx470_curiosity/a17bd77f7e680e88bb55843c706953ede191459b .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx470_curiosity/356fc516778737f62fb57941349fce4fe5fe0cef .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx470_curiosity/9a337d6ba55bc2b297e2c3699db93ac459828dc7 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx470_curiosity/f4c1b5b8885cd34ac676e7a782655ca8a3d57ba8 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx470_curiosity/e2f48fa0ae920fc40c07d97f5f54c7971aef6d2 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx470_curiosity/d514f42daf8dc4af01723af11d3078ea9a1c7460 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx470_curiosity/69bd37baa42723bf2ca00531893253743f091172 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx470_curiosity/62745596caf249a3bb95bf348f3336d18afff80e .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx470_curiosity/65602a478ccf3fe3a8f38c4207b94f572e1f6cdc .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task1.o: ../src/task1.c  .generated_files/flags/pic32mx470_curiosity/8aea44e8f25013836b9e9a8cf4564919a21cdc35 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/task1.o ../src/task1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task2.o: ../src/task2.c  .generated_files/flags/pic32mx470_curiosity/9da88695e839b2b9704df5fdda9d654ca5e3b94 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task2.o.d" -o ${OBJECTDIR}/_ext/1360937237/task2.o ../src/task2.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task3.o: ../src/task3.c  .generated_files/flags/pic32mx470_curiosity/73317f60a5f0ab4b18005588d82746e2a0407ef2 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task3.o.d" -o ${OBJECTDIR}/_ext/1360937237/task3.o ../src/task3.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task4.o: ../src/task4.c  .generated_files/flags/pic32mx470_curiosity/757697377b5268d9d3af89c5f03870c4bfa55713 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task4.o.d" -o ${OBJECTDIR}/_ext/1360937237/task4.o ../src/task4.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1866994462/bsp.o: ../src/config/pic32mx470_curiosity/bsp/bsp.c  .generated_files/flags/pic32mx470_curiosity/7aa661150cede77a2b9ddad9687cffcbda101f83 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1866994462" 
	@${RM} ${OBJECTDIR}/_ext/1866994462/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1866994462/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1866994462/bsp.o.d" -o ${OBJECTDIR}/_ext/1866994462/bsp.o ../src/config/pic32mx470_curiosity/bsp/bsp.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2042640400/osal_freertos.o: ../src/config/pic32mx470_curiosity/osal/osal_freertos.c  .generated_files/flags/pic32mx470_curiosity/276d3a7118f8f57e1117fb6437f6a1b62aef8269 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2042640400" 
	@${RM} ${OBJECTDIR}/_ext/2042640400/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/2042640400/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2042640400/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/2042640400/osal_freertos.o ../src/config/pic32mx470_curiosity/osal/osal_freertos.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1949220912/plib_clk.o: ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx470_curiosity/4f0250e862365b1df5f60a3a4ef052acf0baae0e .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1949220912" 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949220912/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1949220912/plib_clk.o ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296236899/plib_evic.o: ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx470_curiosity/3aa22df4e03125b8231c8e2ed541cb7aaa294548 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296236899" 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296236899/plib_evic.o.d" -o ${OBJECTDIR}/_ext/296236899/plib_evic.o ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296183071/plib_gpio.o: ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx470_curiosity/febaa2586ea12f729ba83802bdf9c179237298ed .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296183071" 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296183071/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/295780128/plib_uart1.o: ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mx470_curiosity/1d1932fae00e36785178b518ec79e78a934ea0ff .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/295780128" 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/295780128/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/295780128/plib_uart1.o ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098930264/xc32_monitor.o: ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mx470_curiosity/af0119b20e9f1324f045e19efe403f7fa0ac66de .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1098930264" 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/initialization.o: ../src/config/pic32mx470_curiosity/initialization.c  .generated_files/flags/pic32mx470_curiosity/6c33ecd4f82adcd0fd766d74531140abe79c3493 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/initialization.o.d" -o ${OBJECTDIR}/_ext/1130503790/initialization.o ../src/config/pic32mx470_curiosity/initialization.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/interrupts.o: ../src/config/pic32mx470_curiosity/interrupts.c  .generated_files/flags/pic32mx470_curiosity/8f05c84430210615ebdc1e80844b2ef76508084f .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts.o.d" -o ${OBJECTDIR}/_ext/1130503790/interrupts.o ../src/config/pic32mx470_curiosity/interrupts.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/exceptions.o: ../src/config/pic32mx470_curiosity/exceptions.c  .generated_files/flags/pic32mx470_curiosity/985e79e333129de502a934ff8588c84f34046fe2 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/exceptions.o.d" -o ${OBJECTDIR}/_ext/1130503790/exceptions.o ../src/config/pic32mx470_curiosity/exceptions.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/freertos_hooks.o: ../src/config/pic32mx470_curiosity/freertos_hooks.c  .generated_files/flags/pic32mx470_curiosity/f57d007baa9b39862ea139110a6cf649e830249d .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o ../src/config/pic32mx470_curiosity/freertos_hooks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/tasks.o: ../src/config/pic32mx470_curiosity/tasks.c  .generated_files/flags/pic32mx470_curiosity/b14c8fa6ef2dfba270cd32273d33c2aa686ce57f .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/tasks.o.d" -o ${OBJECTDIR}/_ext/1130503790/tasks.o ../src/config/pic32mx470_curiosity/tasks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx470_curiosity/849359f352f9acf9ed4a8e3f797ed47593499e9e .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx470_curiosity/eb66e7024c0e74aa9bcec95b3e21b0d37c753786 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx470_curiosity/c387a729a6e010e90b7530a1200a2db8aa330a34 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx470_curiosity/ef152a0a453c7c28ed089bb9914e632e0cdf1056 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx470_curiosity/15fb784de6327b2e76a08c5f8c0c209751c15d6c .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx470_curiosity/2ccf41779d6481ecd729d263300f1c05c345a635 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx470_curiosity/bf2ceeb4b9cca5f3b63786df5763b103a611d788 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx470_curiosity/a75d51d0dcafe9e02aad7843984010436b6ec788 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx470_curiosity/96aadaa744db696d069b06be75766a8813a61d8b .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx470_curiosity/21eed06c30adec5e03fafd97366f6d33227ccae4 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task1.o: ../src/task1.c  .generated_files/flags/pic32mx470_curiosity/75e76e78ab3ab8fcdc89d8f8114673e6783a3a77 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/task1.o ../src/task1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task2.o: ../src/task2.c  .generated_files/flags/pic32mx470_curiosity/6474e2a2e4ec94789194321b4d4a65d0001b776e .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task2.o.d" -o ${OBJECTDIR}/_ext/1360937237/task2.o ../src/task2.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task3.o: ../src/task3.c  .generated_files/flags/pic32mx470_curiosity/c174dbae965fdc489eac1d0fe2084911b0066011 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task3.o.d" -o ${OBJECTDIR}/_ext/1360937237/task3.o ../src/task3.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task4.o: ../src/task4.c  .generated_files/flags/pic32mx470_curiosity/db086444e8618513be6684d261dbddb996723918 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task4.o.d" -o ${OBJECTDIR}/_ext/1360937237/task4.o ../src/task4.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Polling_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mx470_curiosity/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Polling_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Polling_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mx470_curiosity/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Polling_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Polling_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
