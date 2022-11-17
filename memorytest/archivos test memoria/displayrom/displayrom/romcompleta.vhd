library ieee;
use ieee.std_logic_1164.all;

entity romcompleta is

	port (sw : in std_logic_vector (3 downto 0);
			clock : in std_logic;
			display0, display1 : out std_logic_vector(7 downto 0));
			
end romcompleta;

architecture romcompleta_arch of romcompleta is

	signal data_out : std_logic_vector (7 downto 0);
	
		component memoriarom
		
		port(clock : in std_logic;
		address : in std_logic_vector (3 downto 0);
		data_out : out std_logic_vector (7 downto 0));
		
		end component;
		
		component displayrom
		
		port(A, B, C, D : in bit;
			F : out bit_vector (6 downto 0));
			
		end component;
		
begin

U1 : memoriarom port map (clock, sw, data_out);
U2: displayrom port map (data_out(3), data_out(2), data_out(1), data_out(0), display0);
U3: displayrom port map (data_out(7), data_out(6), data_out(5), data_out(4), display1);

end romcompleta_arch;
	
	