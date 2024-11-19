library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decod is
Port ( n1,n2,n3,n4 : in integer range 0 to 15;
dsp1,dsp2,dsp3,dsp4 : out STD_LOGIC_VECTOR(6 downto 0));
end decod;

architecture Behavioral of decod is

begin
with n1 select
dsp1 <= "0111111" when 0,
"1111110" when 1,
"1110111" when 2,
"0000110" when 3,
"1001100" when 4,
"0100100" when 5,
"0100000" when 6,
"0001111" when 7,
"0000000" when 8,
"0000100" when 9,
"0001000" when 10,
"1100000" when 11,
"0110001" when 12,
"1000010" when 13,
"0110000" when 14,
"0111000" when others;

with n2 select
dsp2 <= "0000001" when 0,
"1111111" when 1,
"0010010" when 2,
"0000110" when 3,
"1001100" when 4,
"0100100" when 5,
"0100000" when 6,
"0001111" when 7,
"0000000" when 8,
"0000100" when 9,
"0001000" when 10,
"1100000" when 11,
"0110001" when 12,
"1000010" when 13,
"0110000" when 14,
"0111000" when others;


with n3 select
dsp3 <= "0000001" when 0,
"1111111" when 1,
"0010010" when 2,
"0000110" when 3,
"1001100" when 4,
"0100100" when 5,
"0100000" when 6,
"0001111" when 7,
"0000000" when 8,
"0000100" when 9,
"0001000" when 10,
"1100000" when 11,
"0110001" when 12,
"1000010" when 13,
"0110000" when 14,
"0111000" when others;


with n4 select
dsp4 <= "0000001" when 0,
"1111111" when 1,
"0010010" when 2,
"0000110" when 3,
"1001100" when 4,
"0100100" when 5,
"0100000" when 6,
"0001111" when 7,
"0000000" when 8,
"0000100" when 9,
"0001000" when 10,
"1100000" when 11,
"0110001" when 12,
"1000010" when 13,
"0110000" when 14,
"0111000" when others;


end Behavioral;