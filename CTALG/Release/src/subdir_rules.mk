################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
src/alg_interface.obj: ../src/alg_interface.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/alg_interface.pp" --obj_directory="src" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

src/log_trace.obj: ../src/log_trace.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/log_trace.pp" --obj_directory="src" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

src/look_ahead.obj: ../src/look_ahead.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/look_ahead.pp" --obj_directory="src" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '


