################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
src/interpolation/circle_interpolation.obj: ../src/interpolation/circle_interpolation.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/interpolation/circle_interpolation.pp" --obj_directory="src/interpolation" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

src/interpolation/interpolation.obj: ../src/interpolation/interpolation.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/interpolation/interpolation.pp" --obj_directory="src/interpolation" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

src/interpolation/interpolation_algorithm.obj: ../src/interpolation/interpolation_algorithm.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/interpolation/interpolation_algorithm.pp" --obj_directory="src/interpolation" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

src/interpolation/line_interpolation.obj: ../src/interpolation/line_interpolation.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/interpolation/line_interpolation.pp" --obj_directory="src/interpolation" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

src/interpolation/quick_move_interpolation.obj: ../src/interpolation/quick_move_interpolation.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/interpolation/quick_move_interpolation.pp" --obj_directory="src/interpolation" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

src/interpolation/s_velocity_planning.obj: ../src/interpolation/s_velocity_planning.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/interpolation/s_velocity_planning.pp" --obj_directory="src/interpolation" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

src/interpolation/t_velocity_planning.obj: ../src/interpolation/t_velocity_planning.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/interpolation/t_velocity_planning.pp" --obj_directory="src/interpolation" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

src/interpolation/velocity_planning.obj: ../src/interpolation/velocity_planning.cpp $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/bin/cl6x" -mv6740 --symdebug:none -O3 -ms3 --define=dm8148 --include_path="/usr/local/ezsdk/component-sources/bios_6_32_01_38/packages" --include_path="/opt/ti/ccsv5/tools/compiler/c6000_7.3.4/include" --include_path="/usr/local/ezsdk/component-sources/xdctools_3_22_01_21/packages" --include_path="/root/git/ALG_LIB/CTALG/inc" --include_path="/root/git/ALG_LIB/CTALG/inc/interpolation" --display_error_number --diag_warning=225 --abi=eabi --optimizer_interlist --opt_for_speed=5 --gen_opt_info=2 --call_assumptions=0 --preproc_with_compile --preproc_dependency="src/interpolation/velocity_planning.pp" --obj_directory="src/interpolation" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '


