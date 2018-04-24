library ieee;
use ieee.std_logic_1164.all;
 
entity or4 is
  port (
    i_bit    : in  std_logic_vector(1 downto 0);
    o_bit    : out std_logic_vector(2 downto 0)
    );
end or4;
 
architecture rtl of or4 is
begin
  with i_bit select 
	o_bit <= "011" when "00",
			 "100" when "01",
			 "101" when "10",
			 "110" when "11",
			 "000" when others;	
end rtl;
