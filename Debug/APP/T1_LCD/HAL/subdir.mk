################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/T1_LCD/HAL/DIO_program.c \
../APP/T1_LCD/HAL/KEYPAD.c \
../APP/T1_LCD/HAL/LCD_program.c \
../APP/T1_LCD/HAL/led.c 

OBJS += \
./APP/T1_LCD/HAL/DIO_program.o \
./APP/T1_LCD/HAL/KEYPAD.o \
./APP/T1_LCD/HAL/LCD_program.o \
./APP/T1_LCD/HAL/led.o 

C_DEPS += \
./APP/T1_LCD/HAL/DIO_program.d \
./APP/T1_LCD/HAL/KEYPAD.d \
./APP/T1_LCD/HAL/LCD_program.d \
./APP/T1_LCD/HAL/led.d 


# Each subdirectory must supply rules for building sources it contributes
APP/T1_LCD/HAL/%.o: ../APP/T1_LCD/HAL/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


