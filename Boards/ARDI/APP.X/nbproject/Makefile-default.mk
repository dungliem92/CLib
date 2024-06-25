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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=Apps/AppMain.c Apps/Power_Monitor.c Apps/VCP.c Apps/VCP_Debug.c cfg/SST25xx_Cfg.c cfg/Indicator_Cfg.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device_cdc.c mcc_generated_files/uart3.c mcc_generated_files/system.c mcc_generated_files/coretimer.c mcc_generated_files/clock.c mcc_generated_files/exceptions.c mcc_generated_files/adc1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/uart2.c mcc_generated_files/spi2_driver.c mcc_generated_files/i2c1.c mcc_generated_files/i2c2.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Apps/AppMain.o ${OBJECTDIR}/Apps/Power_Monitor.o ${OBJECTDIR}/Apps/VCP.o ${OBJECTDIR}/Apps/VCP_Debug.o ${OBJECTDIR}/cfg/SST25xx_Cfg.o ${OBJECTDIR}/cfg/Indicator_Cfg.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/i2c2.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Apps/AppMain.o.d ${OBJECTDIR}/Apps/Power_Monitor.o.d ${OBJECTDIR}/Apps/VCP.o.d ${OBJECTDIR}/Apps/VCP_Debug.o.d ${OBJECTDIR}/cfg/SST25xx_Cfg.o.d ${OBJECTDIR}/cfg/Indicator_Cfg.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d ${OBJECTDIR}/mcc_generated_files/uart3.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/i2c2.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Apps/AppMain.o ${OBJECTDIR}/Apps/Power_Monitor.o ${OBJECTDIR}/Apps/VCP.o ${OBJECTDIR}/Apps/VCP_Debug.o ${OBJECTDIR}/cfg/SST25xx_Cfg.o ${OBJECTDIR}/cfg/Indicator_Cfg.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/uart3.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/i2c2.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=Apps/AppMain.c Apps/Power_Monitor.c Apps/VCP.c Apps/VCP_Debug.c cfg/SST25xx_Cfg.c cfg/Indicator_Cfg.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device_generic.c mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device_cdc.c mcc_generated_files/uart3.c mcc_generated_files/system.c mcc_generated_files/coretimer.c mcc_generated_files/clock.c mcc_generated_files/exceptions.c mcc_generated_files/adc1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/uart2.c mcc_generated_files/spi2_driver.c mcc_generated_files/i2c1.c mcc_generated_files/i2c2.c main.c



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

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=PIC32MM0256GPM048
ProjectDir="D:\Git\Github\RPCLib\MIPS\Boards\ARDI\APP.X"
ProjectName=APP
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} ".\App.${OUTPUT_SUFFIX}"]"
	@copy ${ImagePath} ".\App.${OUTPUT_SUFFIX}"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MM0256GPM048
MP_LINKER_FILE_OPTION=,--script="..\Bld\App.ld"
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
${OBJECTDIR}/Apps/AppMain.o: Apps/AppMain.c  .generated_files/flags/default/7237d29bc114eeb592d34c782a82ea6f70c3b7b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Apps" 
	@${RM} ${OBJECTDIR}/Apps/AppMain.o.d 
	@${RM} ${OBJECTDIR}/Apps/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/Apps/AppMain.o.d" -o ${OBJECTDIR}/Apps/AppMain.o Apps/AppMain.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Apps/Power_Monitor.o: Apps/Power_Monitor.c  .generated_files/flags/default/321329f40492ca040774ca4ce1c3946e5196b8b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Apps" 
	@${RM} ${OBJECTDIR}/Apps/Power_Monitor.o.d 
	@${RM} ${OBJECTDIR}/Apps/Power_Monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/Apps/Power_Monitor.o.d" -o ${OBJECTDIR}/Apps/Power_Monitor.o Apps/Power_Monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Apps/VCP.o: Apps/VCP.c  .generated_files/flags/default/80fec5c5f4987c842fbd900b3823e5b8d85725b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Apps" 
	@${RM} ${OBJECTDIR}/Apps/VCP.o.d 
	@${RM} ${OBJECTDIR}/Apps/VCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/Apps/VCP.o.d" -o ${OBJECTDIR}/Apps/VCP.o Apps/VCP.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Apps/VCP_Debug.o: Apps/VCP_Debug.c  .generated_files/flags/default/a74bc2730ae4111a5103c4f43db3285ddb8082da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Apps" 
	@${RM} ${OBJECTDIR}/Apps/VCP_Debug.o.d 
	@${RM} ${OBJECTDIR}/Apps/VCP_Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/Apps/VCP_Debug.o.d" -o ${OBJECTDIR}/Apps/VCP_Debug.o Apps/VCP_Debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/SST25xx_Cfg.o: cfg/SST25xx_Cfg.c  .generated_files/flags/default/ef0881594631c4ccd2dd021744b5b0e67af5408b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/SST25xx_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/SST25xx_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/cfg/SST25xx_Cfg.o.d" -o ${OBJECTDIR}/cfg/SST25xx_Cfg.o cfg/SST25xx_Cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/Indicator_Cfg.o: cfg/Indicator_Cfg.c  .generated_files/flags/default/ba95b894e5636a3dab211b81c9b38669f3b90a5e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/Indicator_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/Indicator_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/cfg/Indicator_Cfg.o.d" -o ${OBJECTDIR}/cfg/Indicator_Cfg.o cfg/Indicator_Cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/e2947dd62aff4d7d4283d6f3522645ead0390d0d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/95d46a3869c63af53359be0bff409d787ff193a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o: mcc_generated_files/usb/usb_device_generic.c  .generated_files/flags/default/e6118397b12702a3014f1c06df0007289f8e2e06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o mcc_generated_files/usb/usb_device_generic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/default/f9bf7f2f125a877d06fa5cf2cb5e7830d0875f79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/ef857e1d0c77a4c3be1a20fa3ea48a2215cc74a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/475150568905da060272f4a397cbb465b58faf1a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o: mcc_generated_files/usb/usb_device_cdc.c  .generated_files/flags/default/9427acb2bac9fb841a0fa6e14d987cf9092a55da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o mcc_generated_files/usb/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/flags/default/88a522d08ef46fb76d05ad380da9c6d1e5616bfb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/ebe405084a0d3def24a26fce5eebac1a0c52f95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/default/f5b315d9edba791e66685f22ba8f6754278e3447 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/8fe2213767219b62181cb5cac268d8cbbdaeaec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/e25acc37be69bb0ff9d8db0017978691f51c3c1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/4769da6c4f389d830166d9bb657c130b7e4ea0a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/b0b46e250b5517ae26e749a2b40baf36444bf212 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/4736756f0be44aee75d494dea250728c6af6738c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/b73bb5262de757afbdda0c03932074150984c903 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/6d09f94dde14bb3bcf88ec9def343375cf08b668 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2_driver.o: mcc_generated_files/spi2_driver.c  .generated_files/flags/default/6d4373b8d756625c3b90fd2e911820dac46d72a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o mcc_generated_files/spi2_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/8aba1d5027605e44b246a9058a671338ea6c8107 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c2.o: mcc_generated_files/i2c2.c  .generated_files/flags/default/f00ab581b248682ea615e2bf347f82970b264f52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c2.o mcc_generated_files/i2c2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/5fba7a90e83c286d78ecf5abd3be647f6d380f89 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/Apps/AppMain.o: Apps/AppMain.c  .generated_files/flags/default/d8940076302e8f0622081cc92dff99e93a348a1e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Apps" 
	@${RM} ${OBJECTDIR}/Apps/AppMain.o.d 
	@${RM} ${OBJECTDIR}/Apps/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/Apps/AppMain.o.d" -o ${OBJECTDIR}/Apps/AppMain.o Apps/AppMain.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Apps/Power_Monitor.o: Apps/Power_Monitor.c  .generated_files/flags/default/c32213c52064c3221391bd8d79788ad08624a235 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Apps" 
	@${RM} ${OBJECTDIR}/Apps/Power_Monitor.o.d 
	@${RM} ${OBJECTDIR}/Apps/Power_Monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/Apps/Power_Monitor.o.d" -o ${OBJECTDIR}/Apps/Power_Monitor.o Apps/Power_Monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Apps/VCP.o: Apps/VCP.c  .generated_files/flags/default/26d9041ca192db6eb76656875f7b5b19511f0522 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Apps" 
	@${RM} ${OBJECTDIR}/Apps/VCP.o.d 
	@${RM} ${OBJECTDIR}/Apps/VCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/Apps/VCP.o.d" -o ${OBJECTDIR}/Apps/VCP.o Apps/VCP.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Apps/VCP_Debug.o: Apps/VCP_Debug.c  .generated_files/flags/default/1fd0c97f57fad0650278c13e8926b05b2e0e4836 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Apps" 
	@${RM} ${OBJECTDIR}/Apps/VCP_Debug.o.d 
	@${RM} ${OBJECTDIR}/Apps/VCP_Debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/Apps/VCP_Debug.o.d" -o ${OBJECTDIR}/Apps/VCP_Debug.o Apps/VCP_Debug.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/SST25xx_Cfg.o: cfg/SST25xx_Cfg.c  .generated_files/flags/default/1ecd5a94d6d92587cdf4b4ae3826a29af9b500b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/SST25xx_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/SST25xx_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/cfg/SST25xx_Cfg.o.d" -o ${OBJECTDIR}/cfg/SST25xx_Cfg.o cfg/SST25xx_Cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/Indicator_Cfg.o: cfg/Indicator_Cfg.c  .generated_files/flags/default/9780a2b426574dbc7e0378c7a31b04b7b980e15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/Indicator_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/Indicator_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/cfg/Indicator_Cfg.o.d" -o ${OBJECTDIR}/cfg/Indicator_Cfg.o cfg/Indicator_Cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/2b2608c6f8c1b7b8c7c5d7e393756c85e88d6f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/a1e36a9c4277c286ea94807cae5d6ea4ed7cfedc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o: mcc_generated_files/usb/usb_device_generic.c  .generated_files/flags/default/c9f45a5482864622cc8bd8b6478f20fed869570a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_generic.o mcc_generated_files/usb/usb_device_generic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  .generated_files/flags/default/93677311841487c373e509023c2e32044c04e08d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/837ea8a8e4041b6860197d5ce3b0dad71ea36bf0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/cd18f3d6d26c5d492df49888dc4bf5f1a92eb351 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o: mcc_generated_files/usb/usb_device_cdc.c  .generated_files/flags/default/5f7371966faee94971d38962974db2698f05f87b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o mcc_generated_files/usb/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart3.o: mcc_generated_files/uart3.c  .generated_files/flags/default/3f1a955ba6fdc1de1a8caf982378231540319436 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart3.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart3.o mcc_generated_files/uart3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/c0d60464eb180abc180b2bb51ee1a493df447c55 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/default/8ed1aa99b7ff87e9046a7503abed64c77f3d534e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/9b082f979c94f8a1924b3a06089f8d5cb1e5e81e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/2144d628542d0f0eefa7965d036b4e489aad8983 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/7a68b2aff826743c901bbc2acc41667ef490e2aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/18ea3afd52757f98630a9cddad0bb42f6bcd3ea0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/1eca4a1799b5f213047cee972237cd10fd9c09d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/cc01accf35792fb588f3e6595857dedcd68c45ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/3f3348d93541f7e37bbf5e54b7ebca294759e55d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2_driver.o: mcc_generated_files/spi2_driver.c  .generated_files/flags/default/791d2ff6853c49a752325d8601ab1d002cf1d928 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2_driver.o mcc_generated_files/spi2_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/74acda797c8d009c4f4a25f8c22f553e5195fe90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c2.o: mcc_generated_files/i2c2.c  .generated_files/flags/default/7d3fa04b9952c71c4ee787fa880d5ce908fedfa8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c2.o mcc_generated_files/i2c2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/4cfafe5d61de92095d1a8f40791c10a3ebb05674 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"mcc_generated_files" -I"Cfg" -I"Apps" -I"../Bld" -I"../../../MIPS" -ffunction-sections -fdata-sections -O1 -fno-common -Werror -Wall -mcci -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../MIPS/pic32mm.a  ../Bld/App.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\MIPS\pic32mm.a      -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=4096,--defsym=_min_stack_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../MIPS/pic32mm.a ../Bld/App.ld ../Bld/bld_m0256_0F0A18194802.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/APP.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\MIPS\pic32mm.a      -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--defsym=_min_stack_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/APP.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/APP.X.${IMAGE_TYPE}.hex -o${DISTDIR}/APP.X.${IMAGE_TYPE}.hex

	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/APP.X.${IMAGE_TYPE}.hex ../Bld/bld_m0256_0F0A18194802.hex -odist/${CND_CONF}/production/APP.X.production.unified.hex

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
