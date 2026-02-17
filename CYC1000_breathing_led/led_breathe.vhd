-- This mini project is to create a breathing effect on an LED using CYC1000 FPGA
-- Required: Tick generator, Triangle counter, PWM

entity led_breathe is 
port(
	i_clk : in std_logic;
	led	: out std_logic
);
end entity led_breathe;


architecture behav of led_breathe is 

signal tick_en: std_logic;
signal triag_counter	: integer := 0;



begin
tick_process: process(i_clk)

begin
end process tick_process;

triag_cntr: process(i_clk)
begin 
end process triag_cntr;


pwm_process: process(i_clk)
begin
end process pwm_process;

end architecture behav;