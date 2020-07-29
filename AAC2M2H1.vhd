LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALU IS
PORT( Op_code : IN STD_LOGIC_VECTOR( 2 DOWNTO 0 );
A, B : IN STD_LOGIC_VECTOR( 31 DOWNTO 0 );
Y : OUT STD_LOGIC_VECTOR( 31 DOWNTO 0 ) );
END ALU;

architecture func of ALU is
signal outp: std_logic_vector(31 downto 0);
begin
		proc:process(Op_code,A,B)
		begin
			case Op_code is
				when "000" =>
					outp<= A;
				when "001" =>
					outp<= A+B;
				when "010" =>
					outp<= A-B;
				when "011" =>
					outp<= A and B;
				when "100" =>
					outp<= A or B;
				when "101" =>
					outp<= A+1;
				when "110" =>
					outp<= A-1;
				when "111" =>
					outp<= B;
				when others => 
					outp<= A;
			end case;
		end process proc;
Y<= outp;
end architecture func;
			