onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB_Signals -color Yellow /Clock_Divider_tb/i_rst_n_tb
add wave -noupdate -expand -group REF_CLK -color Cyan /Clock_Divider_tb/i_ref_clk_tb
add wave -noupdate -expand -group GEN_CLK -color Magenta /Clock_Divider_tb/o_div_clk_tb
add wave -noupdate -expand -group DIV_RATIO /Clock_Divider_tb/i_div_ratio_tb
add wave -noupdate /Clock_Divider_tb/i_clk_en_tb
add wave -noupdate -expand -group DUT_Signals /Clock_Divider_tb/DUT/div_clk
add wave -noupdate -expand -group DUT_Signals /Clock_Divider_tb/DUT/counter
add wave -noupdate -expand -group DUT_Signals /Clock_Divider_tb/DUT/div_odd
add wave -noupdate -expand -group DUT_Signals /Clock_Divider_tb/DUT/high_pulse
add wave -noupdate -expand -group DUT_Signals /Clock_Divider_tb/DUT/low_pulse
add wave -noupdate -expand -group DUT_Signals /Clock_Divider_tb/DUT/flag
add wave -noupdate -expand -group DUT_Signals /Clock_Divider_tb/DUT/clk_en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {30000 ps} 0}
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
WaveRestoreZoom {0 ps} {276297 ps}
