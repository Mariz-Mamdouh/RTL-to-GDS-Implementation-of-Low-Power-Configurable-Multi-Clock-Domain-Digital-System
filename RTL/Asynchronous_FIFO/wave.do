onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {WR signals} /ASYNC_FIFO_tb/W_CLK_tb
add wave -noupdate -expand -group {WR signals} /ASYNC_FIFO_tb/W_RST_tb
add wave -noupdate -expand -group {WR signals} /ASYNC_FIFO_tb/W_inc_tb
add wave -noupdate -expand -group {WR signals} -color Wheat -itemcolor Wheat -radix unsigned /ASYNC_FIFO_tb/W_data_tb
add wave -noupdate -expand -group {WR signals} /ASYNC_FIFO_tb/DUT/W_addr
add wave -noupdate -expand -group {WR signals} -color Cyan -itemcolor Cyan /ASYNC_FIFO_tb/DUT/U1_FIFO_WR/full
add wave -noupdate -expand -group {WR signals} /ASYNC_FIFO_tb/DUT/gray_wr_ptr
add wave -noupdate -expand -group {WR signals} -color Magenta -itemcolor Magenta /ASYNC_FIFO_tb/DUT/sync_gray_wptr
add wave -noupdate -expand -group {WR signals} /ASYNC_FIFO_tb/DUT/U1_FIFO_WR/bn_wr_ptr
add wave -noupdate -radix unsigned /ASYNC_FIFO_tb/DUT/U0_FIFO_MEM/mem
add wave -noupdate -expand -group {RD signals} /ASYNC_FIFO_tb/R_CLK_tb
add wave -noupdate -expand -group {RD signals} /ASYNC_FIFO_tb/R_RST_tb
add wave -noupdate -expand -group {RD signals} /ASYNC_FIFO_tb/R_inc_tb
add wave -noupdate -expand -group {RD signals} -color Wheat -itemcolor Wheat -radix unsigned /ASYNC_FIFO_tb/R_data_tb
add wave -noupdate -expand -group {RD signals} /ASYNC_FIFO_tb/DUT/R_addr
add wave -noupdate -expand -group {RD signals} -color Yellow -itemcolor Yellow /ASYNC_FIFO_tb/DUT/U1_FIFO_RD/empty
add wave -noupdate -expand -group {RD signals} /ASYNC_FIFO_tb/DUT/gray_rd_ptr
add wave -noupdate -expand -group {RD signals} -color Magenta -itemcolor Magenta /ASYNC_FIFO_tb/DUT/sync_gray_rptr
add wave -noupdate -expand -group {RD signals} /ASYNC_FIFO_tb/DUT/U1_FIFO_RD/bn_rd_ptr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {257737 ps} 0}
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
WaveRestoreZoom {0 ps} {856800 ps}
