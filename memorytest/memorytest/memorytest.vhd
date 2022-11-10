library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memorytest is

	port(address, data_in, port_in_00, port_in_01, port_in_02, port_in_03 : in std_logic_vector (7 downto 0);
			writen, reset, clock : in std_logic;
			port_out_00, port_out_01, port_out_02, port_out_03 : out std_logic_vector (7 downto 0);
			display_0, display_1, display_2, display_3 : out std_logic_vector (6 downto 0));
			
end memorytest;

architecture memorytest_arch of memorytest is

	signal data_out : std_logic_vector (7 downto 0);
	
	component memory
	
		port(address, data_in, port_in_00, port_in_01, port_in_02, port_in_03 : in std_logic_vector (7 downto 0);
				writen, clock, reset : in std_logic;
				data_out, port_out_00, port_out_01, port_out_02, port_out_03 : out std_logic_vector (7 downto 0));
				
	end component;
	
	component displayrom
	
		port(A, B, C, D : in std_logic;
				F : out std_logic_vector (6 downto 0));
		
	end component;
	
begin
	
U1 : memory port map (address, data_in, port_in_00, port_in_01, port_in_02, port_in_03, writen, clock, reset, data_out, port_out_00, port_out_01, port_out_02, port_out_03);
U2 : displayrom port map (data_out(3), data_out(2), data_out(1), data_out(0), display_0);
U3 : displayrom port map (data_out(7), data_out(6), data_out(5), data_out(4), display_1);
U4 : displayrom port map (address(3), address(2), address(1), address(0), display_2);
U5 : displayrom port map (address(7), address(6), address(5), address(4), display_3);

end memorytest_arch;
	
		