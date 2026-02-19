-- This mini project is to create a breathing effect on an LED using CYC1000 FPGA
-- Required: Tick generator, Triangle counter, PWM
-- 1. Tick Generator: Uses the 12MHz clock to generate a slow enable pulse (tick_en).
--    This slows down the triangle counter to a human-visible speed.
--
-- 2. Triangle Counter: Counts up to a max value then back down to zero, repeating.
--    Uses tick_en as a clock enable (still in 12MHz domain).
--    Output is the brightness value for the PWM.
--
-- 3. PWM Generator: Runs a fast counter on the 12MHz clock and compares it against
--    the triangle counter value. LED is ON when counter < brightness, OFF otherwise.
--    This controls the perceived brightness of the LED. 

entity led_breathe is 
port(
	i_clk : in std_logic;
	led	: out std_logic
);
end entity led_breathe;


architecture behav of led_breathe is 

signal tick_en			: std_logic	:='0';
signal triag_counter	: integer 	:= 0;
signal tick_count 	: integer 	:= 0;  
 
-- to be visible to the naked eye, considering the triangle wave from 0 to 255 and back to 0 is 2s
-- 2s/512 = 3,9ms. The clk used is 12MHz ie 83,33ns per cycle
-- So tick limit should be 3,9ms/83,33ns = 46,801.87 and rounded to 47000 
constant TICK_LIMIT 	: integer 	:= 47000;



begin

tick_process: process(i_clk)
begin
	if i_clk'EVENT and i_clk = '1' then 
		if tick_count > TICK_LIMIT then
			tick_en	  	<= '1';
			tick_count	<= 0;
		else
			tick_en	  	<= '0';
			tick_count <= tick_count + 1;
		end if;
	end if;
end process tick_process;

triag_cntr: process(i_clk)
begin 
end process triag_cntr;


pwm_process: process(i_clk)
begin
end process pwm_process;

end architecture behav;