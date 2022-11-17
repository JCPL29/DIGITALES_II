library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
	port(A, B : in std_logic_vector (7 downto 0);
			ALU_Sel : in std_logic_vector (2 downto 0);
			NZVC : out std_logic_vector (3 downto 0);
			ALU_Result : out std_logic_vector (7 downto 0));
			
end ALU;

architecture AlU_arch of ALU is

	---signal Result :  std_logic_vector(7 downto 0);
	
	begin
	ALU_PROCESS : process (A, B, ALU_Sel)
	
		variable Sum_uns : unsigned(8 downto 0);
		variable Sub_uns : unsigned(8 downto 0);
		
	begin

		--- Sum Calculation ---------------------------------–
	if (ALU_Sel = "000") then --ADDITION

			Sum_uns := unsigned('0' & A) + unsigned('0' & B);
			ALU_Result <= std_logic_vector(Sum_uns(7 downto 0));
			
		--- Negative Flag (N) -------------------------------
			NZVC(3) <= Sum_uns(7);
			
		--- Zero Flag (Z) ---------------------------------–
			if (Sum_uns(7 downto 0)=x"00") then
				NZVC(2) <= '1';
			else
				NZVC(2) <= '0';
			end if;
			
		--- Overflow Flag (V) -------------------------------
			if ((A(7)='0' and B(7)='0' and Sum_uns(7)='1') or 
			    (A(7)='1' and B(7)='1' and Sum_uns(7)='0')) then
				NZVC(1) <= '1';
			else
				NZVC(1) <= '0';
			end if;
			NZVC(0) <= Sum_uns(8);
		--- Carry Flag (C) ------------------------------------
		


	
		elsif (ALU_Sel="001")then 
				if (A>=B) then
					Sub_uns:= unsigned('0' & A) - unsigned('0' & B);
					ALU_Result <= std_logic_vector (Sub_uns(7 downto 0));
					NZVC(3) <= Sub_uns(7);
					if (Sub_uns(7 downto 0) = x"000")then
						NZVC(2) <= '1';
					else
						NZVC(2) <='0';
					end if;
					
					if ((A(7)='1' and B(7)='0' and Sub_uns(7)='0') or (A(7)='0' and B(7)='1' and Sub_uns(7)='1')) then
						NZVC(1) <= '1';
					else
						NZVC(1) <= '0';
					end if;
					NZVC(0) <= Sub_uns(8);
				
				elsif(A < B) then 
			
					Sub_uns := unsigned('0' & A) - unsigned('0' & B);
					ALU_Result <= std_logic_vector(Sub_uns(7 downto 0));
			
					NZVC(3) <= Sub_uns(7);
			
					if (Sub_uns(7 downto 0) = x"00") then
						NZVC(2) <= '1';
					else
						NZVC(2) <= '0';
					end if;
			
					if ((A(7)='0' and B(7)='0' and Sub_uns(7)='1') or (A(7)='1' and B(7)='1' and Sub_uns(7)='0')) then
						NZVC(1) <= '0';
					else
						NZVC(1) <= '1';
					end if;
					NZVC(0) <= Sub_uns(8);
				end if;
			end if;
		end process;
end alu_arch;