
# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

set REF_CLK_NAME REF_CLK
set REF_CLK_PER 20
set UART_CLK_NAME UART_CLK
set UART_CLK_PER 271.297

set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_RISE 0.05
set CLK_FALL 0.05

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
create_clock -period $REF_CLK_PER  -name $REF_CLK_NAME  [get_ports REF_CLK]
create_clock -period $UART_CLK_PER -name $UART_CLK_NAME [get_ports UART_CLK]

# 2. Generated Clock Definitions
create_generated_clock -master_clock "REF_CLK"  -source [get_ports REF_CLK]  -name "ALU_CLK" -divide_by 1  [get_ports U_CLK_GATE/GATED_CLK]
create_generated_clock -master_clock "UART_CLK" -source [get_ports UART_CLK] -name "TX_CLK"  -divide_by 32 [get_ports U0_CLK_DIV/o_div_clk]
create_generated_clock -master_clock "UART_CLK" -source [get_ports UART_CLK] -name "RX_CLK"  -divide_by 1  [get_ports U1_CLK_DIV/o_div_clk]

# 3. Clock Latencies


# 4. Clock Uncertainties
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_ports {REF_CLK UART_CLK TX_CLK RX_CLK ALU_CLK}]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_ports {REF_CLK UART_CLK TX_CLK RX_CLK ALU_CLK}]

# 4. Clock Transitions
set_clock_transition -rise $CLK_RISE  [get_clocks "REF_CLK UART_CLK"]
set_clock_transition -fall $CLK_FALL  [get_clocks "REF_CLK UART_CLK"]

set_dont_touch_network [get_ports {REF_CLK UART_CLK TX_CLK RX_CLK ALU_CLK}]

####################################################################################

		  

####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks "REF_CLK ALU_CLK"] -group [get_clocks "RX_CLK TX_CLK UART_CLK"]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay_rx  [expr 0.2*$UART_CLK_PER]
set out_delay_rx [expr 0.2*$UART_CLK_PER]

set in_delay_tx  [expr 0.2*32*$UART_CLK_PER]
set out_delay_tx [expr 0.2*32*$UART_CLK_PER]

#Constrain Input Paths
set_input_delay $in_delay_rx -clock RX_CLK [get_port UART_RX_IN]

#Constrain Output Paths
set_output_delay $out_delay_rx -clock RX_CLK [get_ports {parity_error framing_error}]
set_output_delay $out_delay_tx -clock TX_CLK [get_ports UART_TX_OUT]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port UART_RX_IN]


####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [get_ports {parity_error framing_error UART_TX_OUT}]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
			 -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" \
			 -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 8 : multicycle path ####
           #########################################################
####################################################################################


