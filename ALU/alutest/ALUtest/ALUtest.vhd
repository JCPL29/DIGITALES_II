library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALUtest is
	port(A, B : in std_logic_vector (7 downto 0);
		ALU_Sel : in std_logic_vector(2 downto 0);
		NZVC : out std_logic_vector (3 downto 0);
		display0, display1, display_2, display_3 : out std_logic_vector (6 downto 0));
		
end ALutest;

architecture ALUtest_arch of ALUtest is

	signal ALU_Result : std_logic_vector (7 downto 0);

	component ALU
	port(A, B : in std_logic_vector (7 downto 0);
			ALU_Sel : in std_logic_vector (2 downto 0);
			NZVC : out std_logic_vector (3 downto 0);
			ALU_Result : out std_logic_vector (7 downto 0));
			
	end component;

	component displayrom
		port(A, B, C, D : in std_logic;
		F : out std_logic_vector (6 downto 0));
		
	end component;
	
begin

U1: ALU port map (A, B, ALU_Sel, NZVC, ALU_Result);
U2: displayrom port map (ALU_Result(3), ALU_Result(2), ALU_Result(1), ALU_Result(0), display0);
U3: displayrom port map (ALU_Result(7), ALU_Result(6), ALU_Result(5), ALU_Result(4), display1);
U4: displayrom port map (A(3), A(2), A(1), A(0), display_2);
U5n: displayrom port map (A(7), A(6), A(5), A(4), display_3);

end ALUtest_arch;