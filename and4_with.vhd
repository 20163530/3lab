library ieee;
use ieee.std_logic_1164.all;
 
entity and4 is
  port (
    i_bit0    : in  std_logic;
    i_bit1    : in  std_logic;
    i_bit2    : in  std_logic;
    i_bit3    : in  std_logic;
    o_bit : out std_logic
    );
end and4;
 
architecture rtl of and4 is
begin
    with ((i_bit0 and i_bit1) and (i_bit2 and i_bit3)) select 
	o_bit <= '1' when '1',
			 '0' when '0',
			 '0' when others;		 
end rtl;
