library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;

entity ABS_INT_16 is
	port ( 
		INPUT_1  :in  STD_LOGIC_VECTOR(15 DOWNTO 0);
		OUTPUT_1 :out STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	end;

architecture behavior of ABS_INT_16 is
begin
	process (INPUT_1)
		VARIABLE tmp : SIGNED(15 DOWNTO 0);
	begin
		tmp := ABS( SIGNED( INPUT_1 ) );
		OUTPUT_1 <= STD_LOGIC_VECTOR( tmp );
	end process;
end;
