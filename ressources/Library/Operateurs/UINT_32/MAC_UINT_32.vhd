library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;

entity MAC_UINT_32 is
	port ( 
		INPUT_1  :in  STD_LOGIC_VECTOR(31 DOWNTO 0);
		INPUT_2  :in  STD_LOGIC_VECTOR(31 DOWNTO 0);
		INPUT_3  :in  STD_LOGIC_VECTOR(31 DOWNTO 0);
		OUTPUT_1 :out STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	end;

architecture behavior of MAC_UINT_32 is
begin
	process (INPUT_1, INPUT_2)
		VARIABLE tmp : UNSIGNED(31 DOWNTO 0);
	begin
		tmp := UNSIGNED( INPUT_1 ) * UNSIGNED( INPUT_2 ) + UNSIGNED( INPUT_3 );
		OUTPUT_1 <= STD_LOGIC_VECTOR( tmp );
	end process;
end;
