################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/T2_TEMP/TEMP.c 

OBJS += \
./APP/T2_TEMP/TEMP.o 

C_DEPS += \
./APP/T2_TEMP/TEMP.d 


# Each subdirectory must supply rules for building sources it contributes
APP/T2_TEMP/%.o: ../APP/T2_TEMP/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


