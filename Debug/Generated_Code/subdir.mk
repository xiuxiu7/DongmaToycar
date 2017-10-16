################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Generated_Code/ADC.c \
../Generated_Code/ASerialLdd1.c \
../Generated_Code/AdcLdd1.c \
../Generated_Code/BitIoLdd1.c \
../Generated_Code/Blue.c \
../Generated_Code/Cpu.c \
../Generated_Code/MQX1.c \
../Generated_Code/PE_LDD.c \
../Generated_Code/Pedal.c \
../Generated_Code/SystemTimer1.c 

OBJS += \
./Generated_Code/ADC.o \
./Generated_Code/ASerialLdd1.o \
./Generated_Code/AdcLdd1.o \
./Generated_Code/BitIoLdd1.o \
./Generated_Code/Blue.o \
./Generated_Code/Cpu.o \
./Generated_Code/MQX1.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/Pedal.o \
./Generated_Code/SystemTimer1.o 

C_DEPS += \
./Generated_Code/ADC.d \
./Generated_Code/ASerialLdd1.d \
./Generated_Code/AdcLdd1.d \
./Generated_Code/BitIoLdd1.d \
./Generated_Code/Blue.d \
./Generated_Code/Cpu.d \
./Generated_Code/MQX1.d \
./Generated_Code/PE_LDD.d \
./Generated_Code/Pedal.d \
./Generated_Code/SystemTimer1.d 


# Each subdirectory must supply rules for building sources it contributes
Generated_Code/%.o: ../Generated_Code/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/Static_Code/System" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/Static_Code/PDD" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/Static_Code/IO_Map" -I"C:\Freescale\KDS_v3\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/Sources" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/Generated_Code" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/include" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/config" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/kernel" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/psp/cortex_m" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/psp/cortex_m/core/M0" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/psp/cortex_m/compiler/cwgcc" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


