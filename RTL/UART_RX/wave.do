onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB -color Yellow /UART_RX_tb/CLK_tx_tb
add wave -noupdate -expand -group TB -color Violet /UART_RX_tb/CLK_rx
add wave -noupdate -expand -group TB -color Coral /UART_RX_tb/RST_tb
add wave -noupdate -expand -group TB -color {Steel Blue} /UART_RX_tb/RX_IN_tb
add wave -noupdate -expand -group TB -color Khaki /UART_RX_tb/data_valid_tb
add wave -noupdate -expand -group TB -color Turquoise -radix binary /UART_RX_tb/P_DATA_tb
add wave -noupdate -expand -group TB /UART_RX_tb/PAR_TYP_tb
add wave -noupdate -expand -group TB /UART_RX_tb/PAR_EN_tb
add wave -noupdate -expand -group TB -radix unsigned /UART_RX_tb/Prescale_tb
add wave -noupdate -expand -group TB /UART_RX_tb/Parity_Error_tb
add wave -noupdate -expand -group TB /UART_RX_tb/Stop_Error_tb
add wave -noupdate -expand -group {Data Sampler} /UART_RX_tb/DUT/data_samp/sampled_bit
add wave -noupdate -expand -group {Data Sampler} /UART_RX_tb/DUT/data_samp/sample1
add wave -noupdate -expand -group {Data Sampler} /UART_RX_tb/DUT/data_samp/sample2
add wave -noupdate -expand -group {Data Sampler} /UART_RX_tb/DUT/data_samp/sample3
add wave -noupdate -expand -group edge_bit_counter -radix unsigned /UART_RX_tb/DUT/counter/edge_cnt
add wave -noupdate -expand -group edge_bit_counter -radix unsigned /UART_RX_tb/DUT/counter/bit_cnt
add wave -noupdate -expand -group {start check} -color {Dark Orchid} /UART_RX_tb/DUT/strt_chk/strt_glitch
add wave -noupdate -expand -group FSM /UART_RX_tb/DUT/fsm/current_state
add wave -noupdate -expand -group FSM /UART_RX_tb/DUT/fsm/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {815219000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1310654100 ps}
