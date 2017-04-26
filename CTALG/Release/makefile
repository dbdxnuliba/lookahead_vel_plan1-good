################################################################################
# Automatically-generated file. Do not edit!
################################################################################

CG_TOOL_ROOT := /opt/ti/ccsv5/tools/compiler/c6000_7.3.4

ORDERED_OBJS += \
"./src/interpolation/velocity_planning.obj" \
"./src/interpolation/t_velocity_planning.obj" \
"./src/interpolation/s_velocity_planning.obj" \
"./src/interpolation/quick_move_interpolation.obj" \
"./src/interpolation/line_interpolation.obj" \
"./src/interpolation/interpolation_algorithm.obj" \
"./src/interpolation/interpolation.obj" \
"./src/interpolation/circle_interpolation.obj" \
"./src/look_ahead.obj" \
"./src/log_trace.obj" \
"./src/alg_interface.obj" \

-include ../makefile.init

RM := rm -rf
RMDIR := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir_vars.mk
-include src/interpolation/subdir_vars.mk
-include src/subdir_rules.mk
-include src/interpolation/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: CTALG.lib

# Tool invocations
CTALG.lib: $(OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: C6000 Archiver'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/ar6x" r "CTALG.lib" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C6000_LIBRARY_OUTPUTS__QUOTED) "CTALG.lib"
	-$(RM) "src/alg_interface.pp" "src/log_trace.pp" "src/look_ahead.pp" "src/interpolation/circle_interpolation.pp" "src/interpolation/interpolation.pp" "src/interpolation/interpolation_algorithm.pp" "src/interpolation/line_interpolation.pp" "src/interpolation/quick_move_interpolation.pp" "src/interpolation/s_velocity_planning.pp" "src/interpolation/t_velocity_planning.pp" "src/interpolation/velocity_planning.pp" 
	-$(RM) "src/alg_interface.obj" "src/log_trace.obj" "src/look_ahead.obj" "src/interpolation/circle_interpolation.obj" "src/interpolation/interpolation.obj" "src/interpolation/interpolation_algorithm.obj" "src/interpolation/line_interpolation.obj" "src/interpolation/quick_move_interpolation.obj" "src/interpolation/s_velocity_planning.obj" "src/interpolation/t_velocity_planning.obj" "src/interpolation/velocity_planning.obj" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
