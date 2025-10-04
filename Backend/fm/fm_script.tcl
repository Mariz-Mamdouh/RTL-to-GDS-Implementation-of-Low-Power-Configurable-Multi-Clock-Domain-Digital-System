
###################################################################
########################### Variables #############################
###################################################################

set SSLIB "/home/IC/Projects/System/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/Projects/System/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/Projects/System/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "/home/IC/Projects/System/syn/System_Top.svf"

###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Verilog Files
read_verilog -container r [glob /home/IC/Projects/System/rtl/*.*v]

# Read Reference technology libraries
read_db -container r [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 
set_top System_Top


###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -netlist -container i "/home/IC/Projects/System/syn/system_top_netlist.v"

# Read Implementation technology libraries
read_db -container i [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design
set_top System_Top


###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"


start_gui

