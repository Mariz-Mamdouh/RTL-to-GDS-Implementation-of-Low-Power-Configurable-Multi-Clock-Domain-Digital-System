vlib work
vlog *.v
vsim -voptargs=+acc work.Clock_Divider_tb
do wave.do
run -all
