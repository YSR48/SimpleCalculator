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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/My_Drivers.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/My_Drivers.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ECU_layer/7_segment/ecu_seven_segment.c ECU_layer/BUTTON/ecu_button.c ECU_layer/Char_LCD/ecu_char_lcd.c ECU_layer/DC_Motor/ecu_dc_motor.c ECU_layer/KeyPad/ecu_keypad.c ECU_layer/LED/ecu_led.c ECU_layer/Relay/ecu_relay.c ECU_layer/ecu_layer_inti.c MCAL_layer/GPIO/hal_gpio.c MCAL_layer/device_config.c application.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1 ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1 ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1 ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1 ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1 ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1 ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1 ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1 ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1 ${OBJECTDIR}/MCAL_layer/device_config.p1 ${OBJECTDIR}/application.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1.d ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1.d ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1.d ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1.d ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1.d ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1.d ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1.d ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1.d ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1.d ${OBJECTDIR}/MCAL_layer/device_config.p1.d ${OBJECTDIR}/application.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1 ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1 ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1 ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1 ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1 ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1 ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1 ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1 ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1 ${OBJECTDIR}/MCAL_layer/device_config.p1 ${OBJECTDIR}/application.p1

# Source Files
SOURCEFILES=ECU_layer/7_segment/ecu_seven_segment.c ECU_layer/BUTTON/ecu_button.c ECU_layer/Char_LCD/ecu_char_lcd.c ECU_layer/DC_Motor/ecu_dc_motor.c ECU_layer/KeyPad/ecu_keypad.c ECU_layer/LED/ecu_led.c ECU_layer/Relay/ecu_relay.c ECU_layer/ecu_layer_inti.c MCAL_layer/GPIO/hal_gpio.c MCAL_layer/device_config.c application.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/My_Drivers.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1: ECU_layer/7_segment/ecu_seven_segment.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/7_segment" 
	@${RM} ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1 ECU_layer/7_segment/ecu_seven_segment.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.d ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1: ECU_layer/BUTTON/ecu_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/BUTTON" 
	@${RM} ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1 ECU_layer/BUTTON/ecu_button.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.d ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1: ECU_layer/Char_LCD/ecu_char_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/Char_LCD" 
	@${RM} ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1 ECU_layer/Char_LCD/ecu_char_lcd.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.d ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1: ECU_layer/DC_Motor/ecu_dc_motor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/DC_Motor" 
	@${RM} ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1 ECU_layer/DC_Motor/ecu_dc_motor.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.d ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1: ECU_layer/KeyPad/ecu_keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/KeyPad" 
	@${RM} ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1 ECU_layer/KeyPad/ecu_keypad.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.d ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/LED/ecu_led.p1: ECU_layer/LED/ecu_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1 ECU_layer/LED/ecu_led.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/LED/ecu_led.d ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1: ECU_layer/Relay/ecu_relay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/Relay" 
	@${RM} ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1 ECU_layer/Relay/ecu_relay.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.d ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1: ECU_layer/ecu_layer_inti.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer" 
	@${RM} ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1 ECU_layer/ecu_layer_inti.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/ecu_layer_inti.d ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1: MCAL_layer/GPIO/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MCAL_layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1 MCAL_layer/GPIO/hal_gpio.c 
	@-${MV} ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.d ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_layer/device_config.p1: MCAL_layer/device_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MCAL_layer" 
	@${RM} ${OBJECTDIR}/MCAL_layer/device_config.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_layer/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_layer/device_config.p1 MCAL_layer/device_config.c 
	@-${MV} ${OBJECTDIR}/MCAL_layer/device_config.d ${OBJECTDIR}/MCAL_layer/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_layer/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1: ECU_layer/7_segment/ecu_seven_segment.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/7_segment" 
	@${RM} ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1 ECU_layer/7_segment/ecu_seven_segment.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.d ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/7_segment/ecu_seven_segment.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1: ECU_layer/BUTTON/ecu_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/BUTTON" 
	@${RM} ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1 ECU_layer/BUTTON/ecu_button.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.d ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/BUTTON/ecu_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1: ECU_layer/Char_LCD/ecu_char_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/Char_LCD" 
	@${RM} ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1 ECU_layer/Char_LCD/ecu_char_lcd.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.d ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/Char_LCD/ecu_char_lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1: ECU_layer/DC_Motor/ecu_dc_motor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/DC_Motor" 
	@${RM} ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1 ECU_layer/DC_Motor/ecu_dc_motor.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.d ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/DC_Motor/ecu_dc_motor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1: ECU_layer/KeyPad/ecu_keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/KeyPad" 
	@${RM} ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1 ECU_layer/KeyPad/ecu_keypad.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.d ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/KeyPad/ecu_keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/LED/ecu_led.p1: ECU_layer/LED/ecu_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1 ECU_layer/LED/ecu_led.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/LED/ecu_led.d ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/LED/ecu_led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1: ECU_layer/Relay/ecu_relay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer/Relay" 
	@${RM} ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1 ECU_layer/Relay/ecu_relay.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.d ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/Relay/ecu_relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1: ECU_layer/ecu_layer_inti.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ECU_layer" 
	@${RM} ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1 ECU_layer/ecu_layer_inti.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/ecu_layer_inti.d ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/ecu_layer_inti.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1: MCAL_layer/GPIO/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MCAL_layer/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1 MCAL_layer/GPIO/hal_gpio.c 
	@-${MV} ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.d ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_layer/GPIO/hal_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_layer/device_config.p1: MCAL_layer/device_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/MCAL_layer" 
	@${RM} ${OBJECTDIR}/MCAL_layer/device_config.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_layer/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_layer/device_config.p1 MCAL_layer/device_config.c 
	@-${MV} ${OBJECTDIR}/MCAL_layer/device_config.d ${OBJECTDIR}/MCAL_layer/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_layer/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/My_Drivers.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/My_Drivers.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/My_Drivers.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/My_Drivers.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/My_Drivers.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/My_Drivers.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Program Files/Microchip/xc8/v2.46/pic/include/proc" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/My_Drivers.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
