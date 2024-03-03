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
FINAL_IMAGE=${DISTDIR}/basic_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/basic_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-pic32mx470_curiosity.mk ${DISTDIR}/basic_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1130503790/interrupts_a.o: ../src/config/pic32mx470_curiosity/interrupts_a.S  .generated_files/flags/pic32mx470_curiosity/86bf8261b15c080c676542f1fd23a35da4665920 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.ok ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/1130503790/interrupts_a.o ../src/config/pic32mx470_curiosity/interrupts_a.S  -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1130503790/interrupts_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d" "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx470_curiosity/ad17cee2320bc93a93358b0ba0bf2e707f19b2ab .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.ok ${OBJECTDIR}/_ext/951553248/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/951553248/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553248/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553248/port_asm.o.d" "${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1130503790/interrupts_a.o: ../src/config/pic32mx470_curiosity/interrupts_a.S  .generated_files/flags/pic32mx470_curiosity/7ec7c2c0af9a02277e30d5e981d4b1605b73c5f .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.ok ${OBJECTDIR}/_ext/1130503790/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/1130503790/interrupts_a.o ../src/config/pic32mx470_curiosity/interrupts_a.S  -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1130503790/interrupts_a.o.asm.d",--gdwarf-2,-I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.d" "${OBJECTDIR}/_ext/1130503790/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx470_curiosity/77321e02f6a90c5b5080bb475ddd0f3a8bfd0d52 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${OBJECTDIR}/_ext/1866994462/bsp.o: ../src/config/pic32mx470_curiosity/bsp/bsp.c  .generated_files/flags/pic32mx470_curiosity/77927373d6acb8eaeeb459fe0bc23519e50cf723 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1866994462" 
	@${RM} ${OBJECTDIR}/_ext/1866994462/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1866994462/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1866994462/bsp.o.d" -o ${OBJECTDIR}/_ext/1866994462/bsp.o ../src/config/pic32mx470_curiosity/bsp/bsp.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2042640400/osal_freertos.o: ../src/config/pic32mx470_curiosity/osal/osal_freertos.c  .generated_files/flags/pic32mx470_curiosity/3f8872232685d4ed0239e661c83ee90fdf529525 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2042640400" 
	@${RM} ${OBJECTDIR}/_ext/2042640400/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/2042640400/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2042640400/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/2042640400/osal_freertos.o ../src/config/pic32mx470_curiosity/osal/osal_freertos.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1949220912/plib_clk.o: ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx470_curiosity/1b4ea9f27311d59a9ef20c7178b2f3ad106023ea .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1949220912" 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949220912/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1949220912/plib_clk.o ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296236899/plib_evic.o: ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx470_curiosity/b85b0d020aa7a7c46d94a1ea4a7ebc14072addee .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296236899" 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296236899/plib_evic.o.d" -o ${OBJECTDIR}/_ext/296236899/plib_evic.o ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296183071/plib_gpio.o: ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx470_curiosity/5fb14b7669edbbdec2a5e394645ec4945bf4ba57 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296183071" 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296183071/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/295780128/plib_uart1.o: ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mx470_curiosity/7154ed814cf62d1a1740297106f4838130da7576 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/295780128" 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/295780128/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/295780128/plib_uart1.o ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098930264/xc32_monitor.o: ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mx470_curiosity/2b5574629d8b6b74d0405ee8dd4b9c9d5f6a11ed .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1098930264" 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/initialization.o: ../src/config/pic32mx470_curiosity/initialization.c  .generated_files/flags/pic32mx470_curiosity/49c62fe4ed1c1c5256efd716bc1c6cfdf9b7449b .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/initialization.o.d" -o ${OBJECTDIR}/_ext/1130503790/initialization.o ../src/config/pic32mx470_curiosity/initialization.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/interrupts.o: ../src/config/pic32mx470_curiosity/interrupts.c  .generated_files/flags/pic32mx470_curiosity/9d7839cdb8a72e27db4537714ea9ffb6f90ef174 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts.o.d" -o ${OBJECTDIR}/_ext/1130503790/interrupts.o ../src/config/pic32mx470_curiosity/interrupts.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/exceptions.o: ../src/config/pic32mx470_curiosity/exceptions.c  .generated_files/flags/pic32mx470_curiosity/e755c7b42bdc5faa44f0f2202861b57c55f644c2 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/exceptions.o.d" -o ${OBJECTDIR}/_ext/1130503790/exceptions.o ../src/config/pic32mx470_curiosity/exceptions.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/freertos_hooks.o: ../src/config/pic32mx470_curiosity/freertos_hooks.c  .generated_files/flags/pic32mx470_curiosity/1e93f8b0af359652a199d062ab2ae1775722e00b .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o ../src/config/pic32mx470_curiosity/freertos_hooks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/tasks.o: ../src/config/pic32mx470_curiosity/tasks.c  .generated_files/flags/pic32mx470_curiosity/1cc85ca7938000096ea99d09774a8f79ff9210c7 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/tasks.o.d" -o ${OBJECTDIR}/_ext/1130503790/tasks.o ../src/config/pic32mx470_curiosity/tasks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx470_curiosity/ec25fc62ba48dbf2333535205adc98153bc97671 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx470_curiosity/da7f0f770931e1ad9b72edcfa103ad3935b75d9b .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx470_curiosity/dd4a7fe11a95e8803f77c621fbc660298fa04db3 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx470_curiosity/d5a0160ed08038ae5c4cd830661f983eabaef26e .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx470_curiosity/314eff146596833afff07c6e1869f15326207447 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx470_curiosity/e2fcf59a5ed96621d28e13a4e45b9c0b0ec3adfb .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx470_curiosity/d82118d0876c186298986f4cf39b317e02fabf63 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx470_curiosity/a981705ccf51036d519d53eaed487dcc2c5e4203 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx470_curiosity/9272e9580c6730243baccd398defa1787e1a906a .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx470_curiosity/b6194209d9747447cab3d0e8cb2b333f068db981 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task1.o: ../src/task1.c  .generated_files/flags/pic32mx470_curiosity/a4d2caaee72f72633605d6fbae4049ddb088cfdd .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/task1.o ../src/task1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task2.o: ../src/task2.c  .generated_files/flags/pic32mx470_curiosity/973414a38146dee3807ce3bc9a83b45d68335a80 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task2.o.d" -o ${OBJECTDIR}/_ext/1360937237/task2.o ../src/task2.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task3.o: ../src/task3.c  .generated_files/flags/pic32mx470_curiosity/67b62652cc662f93ca8a5485b2ff04b247d8353d .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task3.o.d" -o ${OBJECTDIR}/_ext/1360937237/task3.o ../src/task3.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task4.o: ../src/task4.c  .generated_files/flags/pic32mx470_curiosity/870c6c547d09aa23ac4f94257877234ca7a85828 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task4.o.d" -o ${OBJECTDIR}/_ext/1360937237/task4.o ../src/task4.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1866994462/bsp.o: ../src/config/pic32mx470_curiosity/bsp/bsp.c  .generated_files/flags/pic32mx470_curiosity/82d202364ac5e9c1fac3f9ec4bfbeee83237da9c .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1866994462" 
	@${RM} ${OBJECTDIR}/_ext/1866994462/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1866994462/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1866994462/bsp.o.d" -o ${OBJECTDIR}/_ext/1866994462/bsp.o ../src/config/pic32mx470_curiosity/bsp/bsp.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2042640400/osal_freertos.o: ../src/config/pic32mx470_curiosity/osal/osal_freertos.c  .generated_files/flags/pic32mx470_curiosity/ff6b03ff500bb76269adfc5ae70df0a6b5c3f125 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2042640400" 
	@${RM} ${OBJECTDIR}/_ext/2042640400/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/2042640400/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2042640400/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/2042640400/osal_freertos.o ../src/config/pic32mx470_curiosity/osal/osal_freertos.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1949220912/plib_clk.o: ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx470_curiosity/346262e427cb8e5536603a6426f5d3d012d1159f .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1949220912" 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949220912/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1949220912/plib_clk.o ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296236899/plib_evic.o: ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx470_curiosity/e704775064d7e43fc79531327ed37809a8d8b8ff .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296236899" 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296236899/plib_evic.o.d" -o ${OBJECTDIR}/_ext/296236899/plib_evic.o ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296183071/plib_gpio.o: ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx470_curiosity/1aa0b358b691fa2bee42c0c79ae6b9e7044dfcff .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296183071" 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296183071/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/295780128/plib_uart1.o: ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mx470_curiosity/cdd76b2aaf5d392bb00ebac403c4cca3ba6fffa .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/295780128" 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/295780128/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/295780128/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/295780128/plib_uart1.o ../src/config/pic32mx470_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098930264/xc32_monitor.o: ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mx470_curiosity/59e9c294c006020ecab8965b4693bbcf1c235962 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1098930264" 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/initialization.o: ../src/config/pic32mx470_curiosity/initialization.c  .generated_files/flags/pic32mx470_curiosity/26c48f4f6804e0bdb2e100132501547de91e6619 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/initialization.o.d" -o ${OBJECTDIR}/_ext/1130503790/initialization.o ../src/config/pic32mx470_curiosity/initialization.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/interrupts.o: ../src/config/pic32mx470_curiosity/interrupts.c  .generated_files/flags/pic32mx470_curiosity/a10d12e8aa58012df2de34c43e32ad8c490df53d .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts.o.d" -o ${OBJECTDIR}/_ext/1130503790/interrupts.o ../src/config/pic32mx470_curiosity/interrupts.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/exceptions.o: ../src/config/pic32mx470_curiosity/exceptions.c  .generated_files/flags/pic32mx470_curiosity/c035648abd9526b25072427abac736bb41a544b .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/exceptions.o.d" -o ${OBJECTDIR}/_ext/1130503790/exceptions.o ../src/config/pic32mx470_curiosity/exceptions.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/freertos_hooks.o: ../src/config/pic32mx470_curiosity/freertos_hooks.c  .generated_files/flags/pic32mx470_curiosity/c52d143cd8082c5b6f1ab9afd5483cae4b05b0c .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1130503790/freertos_hooks.o ../src/config/pic32mx470_curiosity/freertos_hooks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/tasks.o: ../src/config/pic32mx470_curiosity/tasks.c  .generated_files/flags/pic32mx470_curiosity/48d7271a446ce23872492935f2d05d646650933c .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/tasks.o.d" -o ${OBJECTDIR}/_ext/1130503790/tasks.o ../src/config/pic32mx470_curiosity/tasks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx470_curiosity/6828f14688f8df47f11b1f8665f11fc8598638da .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx470_curiosity/f628e2be3af626c78d41cf3d078b6a47f8ac5659 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx470_curiosity/11c36612d2c05d526a4af067acdd6ea1207d0221 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx470_curiosity/efc71328efa16cfc337814954fa9e0634f5b862d .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx470_curiosity/2a84bd2fe41d0acb7ddd47e53b93f2dfe22f729b .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx470_curiosity/712cd43a90b6d39db246716fce422011ff54c833 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx470_curiosity/3eec797212e3b3866b23fb1890df3b91a40f5ea2 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx470_curiosity/f09e1ad51f2a0099f13a2494b4a8aadf1c782cfb .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx470_curiosity/9a95e6e90dd6ff5224ec9bbd96b5c069e957f959 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx470_curiosity/534acfc0974dead8bdc5be129cde047555b79b5a .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task1.o: ../src/task1.c  .generated_files/flags/pic32mx470_curiosity/786ff23b052341569768fbd09c1a5e118b1964b0 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/task1.o ../src/task1.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task2.o: ../src/task2.c  .generated_files/flags/pic32mx470_curiosity/296c1b0d3b05407be5ebaa17c27b7bb0814d1584 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task2.o.d" -o ${OBJECTDIR}/_ext/1360937237/task2.o ../src/task2.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task3.o: ../src/task3.c  .generated_files/flags/pic32mx470_curiosity/7c7675d37867c0407ef4bed71393c375b9db0aa2 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task3.o.d" -o ${OBJECTDIR}/_ext/1360937237/task3.o ../src/task3.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/task4.o: ../src/task4.c  .generated_files/flags/pic32mx470_curiosity/222dd8348a4c77c0cee35384f657955a644d5945 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${DISTDIR}/basic_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mx470_curiosity/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/basic_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/basic_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mx470_curiosity/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/basic_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/basic_freertos_pic32mx470_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
