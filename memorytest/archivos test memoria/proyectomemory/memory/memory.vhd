library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is

	port(address, data_in, port_in_00, port_in_01, port_in_02, port_in_03 : in std_logic_vector (7 downto 0);
			writen, clock, reset : in std_logic;
			data_out, port_out_00, port_out_01, port_out_02, port_out_03 : out std_logic_vector (7 downto 0));
end memory;

architecture memory_arch of memory is

signal rom_data_out, ram_data_out : std_logic_vector (7 downto 0);

	component rom
	
	port(clock : in std_logic;
		address : in std_logic_vector (7 downto 0);
		data_out : out std_logic_vector (7 downto 0));
	
	end component;
	
	component ram
	
	port(address, data_in : in std_logic_vector (7 downto 0);
		clock : in std_logic;
		writen : in std_logic;
		data_out : out std_logic_vector (7 downto 0));
		
	end component;
	
	component outputports
	
	port (address, data_in : in std_logic_vector(7 downto 0);
			clock, writen, reset : in std_logic;
			port_out_00, port_out_01, port_out_02, port_out_03 : out std_logic_vector (7 downto 0));
			
	end component;
	
begin

	MUX1 : process (address, rom_data_out, ram_data_out,
						port_in_00, port_in_01, port_in_02, port_in_03)
					
					begin
						
						if ((to_integer(unsigned(address))>=0) and 
							(to_integer(unsigned(address))<= 127)) then
							data_out <= rom_data_out;
						
						elsif ((to_integer(unsigned(address)) >= 128) and
								(to_integer(unsigned(address)) <= 223)) then
								data_out <= ram_data_out;
								
						elsif (address = x"F0") then data_out <= port_in_00;
						elsif (address = x"F1") then data_out <= port_in_01;
						elsif (address = x"F2") then data_out <= port_in_02;
						elsif (address = x"F3") then data_out <= port_in_03;
						
						else data_out <= x"00";
						
						end if;
				end process;

U1 : rom port map (clock, address, rom_data_out);
U2 : ram port map (address, data_in, clock, writen, ram_data_out);
U3 : outputports port map (address, data_in, clock, writen, reset, port_out_00, port_out_01, port_out_02, port_out_03);

end memory_arch;