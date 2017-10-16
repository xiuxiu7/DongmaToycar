################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MQXLITE/config/task_template_list.c 

OBJS += \
./MQXLITE/config/task_template_list.o 

C_DEPS += \
./MQXLITE/config/task_template_list.d 


# Each subdirectory must supply rules for building sources it contributes
MQXLITE/config/%.o: ../MQXLITE/config/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/Static_Code/System" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/Static_Code/PDD" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/Static_Code/IO_Map" -I"C:\Freescale\KDS_v3\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/Sources" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/Generated_Code" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/include" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/config" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/kernel" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/psp/cortex_m" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/psp/cortex_m/core/M0" -I"C:/Users/xiuwe/workspace.kds/DongmaToyCar/MQXLITE/psp/cortex_m/compiler/cwgcc" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


