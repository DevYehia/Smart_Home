################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include APP/T2_TEMP/ADC/subdir.mk
-include APP/T2_TEMP/subdir.mk
-include APP/T1_LCD/MCAL/subdir.mk
-include APP/T1_LCD/HomeSystem/subdir.mk
-include APP/T1_LCD/HAL/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
SMART_HOME.lss \

FLASH_IMAGE += \
SMART_HOME.hex \

SIZEDUMMY += \
sizedummy \


# All Target
all: SMART_HOME.elf secondary-outputs

# Tool invocations
SMART_HOME.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,SMART_HOME.map -mmcu=atmega16 -o "SMART_HOME.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

SMART_HOME.lss: SMART_HOME.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S SMART_HOME.elf  >"SMART_HOME.lss"
	@echo 'Finished building: $@'
	@echo ' '

SMART_HOME.hex: SMART_HOME.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex SMART_HOME.elf  "SMART_HOME.hex"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: SMART_HOME.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega16 SMART_HOME.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) SMART_HOME.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
