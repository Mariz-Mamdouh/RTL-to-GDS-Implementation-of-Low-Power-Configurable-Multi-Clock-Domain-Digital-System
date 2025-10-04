onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /DATA_SYNC_tb/NUM_STAGES
add wave -noupdate /DATA_SYNC_tb/BUS_WIDTH
add wave -noupdate -color Yellow /DATA_SYNC_tb/CLK_tb
add wave -noupdate -color Pink /DATA_SYNC_tb/RST_tb
add wave -noupdate -expand -group {TB signals} /DATA_SYNC_tb/unsync_bus_tb
add wave -noupdate -expand -group {TB signals} -color Cyan /DATA_SYNC_tb/bus_enable_tb
add wave -noupdate -expand -group {TB signals} /DATA_SYNC_tb/sync_bus_tb
add wave -noupdate -expand -group {TB signals} -color White /DATA_SYNC_tb/enable_pulse_tb
add wave -noupdate -expand -group {DUT signals} /DATA_SYNC_tb/DUT/mux_out
add wave -noupdate -expand -group {DUT signals} /DATA_SYNC_tb/DUT/pulse_gen_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {420 ns}
