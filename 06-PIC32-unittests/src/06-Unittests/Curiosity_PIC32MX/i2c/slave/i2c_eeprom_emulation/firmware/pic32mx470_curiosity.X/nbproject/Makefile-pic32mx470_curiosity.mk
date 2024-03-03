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
FINAL_IMAGE=${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mx470_curiosity/peripheral/i2c/slave/plib_i2c1_slave.c ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c ../src/config/pic32mx470_curiosity/initialization.c ../src/config/pic32mx470_curiosity/interrupts.c ../src/config/pic32mx470_curiosity/exceptions.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1949220912/plib_clk.o ${OBJECTDIR}/_ext/296236899/plib_evic.o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ${OBJECTDIR}/_ext/1130503790/initialization.o ${OBJECTDIR}/_ext/1130503790/interrupts.o ${OBJECTDIR}/_ext/1130503790/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1949220912/plib_clk.o.d ${OBJECTDIR}/_ext/296236899/plib_evic.o.d ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d ${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o.d ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d ${OBJECTDIR}/_ext/1130503790/initialization.o.d ${OBJECTDIR}/_ext/1130503790/interrupts.o.d ${OBJECTDIR}/_ext/1130503790/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1949220912/plib_clk.o ${OBJECTDIR}/_ext/296236899/plib_evic.o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ${OBJECTDIR}/_ext/1130503790/initialization.o ${OBJECTDIR}/_ext/1130503790/interrupts.o ${OBJECTDIR}/_ext/1130503790/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mx470_curiosity/peripheral/i2c/slave/plib_i2c1_slave.c ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c ../src/config/pic32mx470_curiosity/initialization.c ../src/config/pic32mx470_curiosity/interrupts.c ../src/config/pic32mx470_curiosity/exceptions.c ../src/main.c



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
	${MAKE}  -f nbproject/Makefile-pic32mx470_curiosity.mk ${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1949220912/plib_clk.o: ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx470_curiosity/7973cb347ad9fbbf21deed29c715342cecff48b1 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1949220912" 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949220912/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1949220912/plib_clk.o ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296236899/plib_evic.o: ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx470_curiosity/8bd5118aa36a9e17fa0f8b082601cb7395bf9da1 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296236899" 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296236899/plib_evic.o.d" -o ${OBJECTDIR}/_ext/296236899/plib_evic.o ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296183071/plib_gpio.o: ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx470_curiosity/c6893ac780f7f4db1c50ec4581f5299f640eb88d .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296183071" 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296183071/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o: ../src/config/pic32mx470_curiosity/peripheral/i2c/slave/plib_i2c1_slave.c  .generated_files/flags/pic32mx470_curiosity/ee4fd0fc7d5f56bbaead4f0684264ac9ad8ed54a .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/287989680" 
	@${RM} ${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o.d" -o ${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o ../src/config/pic32mx470_curiosity/peripheral/i2c/slave/plib_i2c1_slave.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098930264/xc32_monitor.o: ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mx470_curiosity/a0c85c9b518d3de05ba07754ae49403e4046bc34 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1098930264" 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/initialization.o: ../src/config/pic32mx470_curiosity/initialization.c  .generated_files/flags/pic32mx470_curiosity/5c912218e714f5f3e1b73d7990ff8f5cd9b45162 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/initialization.o.d" -o ${OBJECTDIR}/_ext/1130503790/initialization.o ../src/config/pic32mx470_curiosity/initialization.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/interrupts.o: ../src/config/pic32mx470_curiosity/interrupts.c  .generated_files/flags/pic32mx470_curiosity/e92e62ab23a6c78de484037844d82a97b7e4c627 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts.o.d" -o ${OBJECTDIR}/_ext/1130503790/interrupts.o ../src/config/pic32mx470_curiosity/interrupts.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/exceptions.o: ../src/config/pic32mx470_curiosity/exceptions.c  .generated_files/flags/pic32mx470_curiosity/f07085922669b1b9507879c15faa72ba17e153f0 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/exceptions.o.d" -o ${OBJECTDIR}/_ext/1130503790/exceptions.o ../src/config/pic32mx470_curiosity/exceptions.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx470_curiosity/1b21f4f03fe393a7751843012b6df5931b947939 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1949220912/plib_clk.o: ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx470_curiosity/bb69ce3e80fcd5565d8dbfd7fc3ced8fe91f31ab .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1949220912" 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1949220912/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1949220912/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1949220912/plib_clk.o ../src/config/pic32mx470_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296236899/plib_evic.o: ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx470_curiosity/e4dde1a836248c7d3ae785a835a0c5a0620ce26a .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296236899" 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/296236899/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296236899/plib_evic.o.d" -o ${OBJECTDIR}/_ext/296236899/plib_evic.o ../src/config/pic32mx470_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/296183071/plib_gpio.o: ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx470_curiosity/8578ebb6e884361fdad5d12557a75d0a63954319 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/296183071" 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/296183071/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/296183071/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/296183071/plib_gpio.o ../src/config/pic32mx470_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o: ../src/config/pic32mx470_curiosity/peripheral/i2c/slave/plib_i2c1_slave.c  .generated_files/flags/pic32mx470_curiosity/a43bb1e802c0c24b27dfb734b69ff0d856ed4cb7 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/287989680" 
	@${RM} ${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o.d" -o ${OBJECTDIR}/_ext/287989680/plib_i2c1_slave.o ../src/config/pic32mx470_curiosity/peripheral/i2c/slave/plib_i2c1_slave.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098930264/xc32_monitor.o: ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mx470_curiosity/fa71c5f588dc54cdf13db1f2c4c3953f1cf72eab .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1098930264" 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098930264/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1098930264/xc32_monitor.o ../src/config/pic32mx470_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/initialization.o: ../src/config/pic32mx470_curiosity/initialization.c  .generated_files/flags/pic32mx470_curiosity/77a325e8c4ce08422c42c8cf43db80e4d4a848e0 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/initialization.o.d" -o ${OBJECTDIR}/_ext/1130503790/initialization.o ../src/config/pic32mx470_curiosity/initialization.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/interrupts.o: ../src/config/pic32mx470_curiosity/interrupts.c  .generated_files/flags/pic32mx470_curiosity/e8c71462d4c0e3d8aee783a3586c9373770135e5 .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/interrupts.o.d" -o ${OBJECTDIR}/_ext/1130503790/interrupts.o ../src/config/pic32mx470_curiosity/interrupts.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1130503790/exceptions.o: ../src/config/pic32mx470_curiosity/exceptions.c  .generated_files/flags/pic32mx470_curiosity/c46706e619954c2a6a1f4a627c4fa92c1b1ced2f .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1130503790" 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1130503790/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1130503790/exceptions.o.d" -o ${OBJECTDIR}/_ext/1130503790/exceptions.o ../src/config/pic32mx470_curiosity/exceptions.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx470_curiosity/7bc19eb202b05b7ff0d57cb1bb399259d35f101f .generated_files/flags/pic32mx470_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mx470_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mx470_curiosity/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mx470_curiosity/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx470_curiosity=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/pic32mx470_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
