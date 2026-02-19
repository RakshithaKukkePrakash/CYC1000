#create clock
create_clock -name i_clk -period 83.333 -waveform {0 41.666} [get_ports i_clk]

set_output_delay -clock i_clk -max 0 [get_ports led]
set_output_delay -clock i_clk -min 0 [get_ports led]