
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cont is
	Port(
		clk : in std_logic;
		bte,btm,btd,bts : in std_logic;
		sel : out std_logic_vector (3 downto 0);
		d : out std_logic_vector (6 downto 0)
);
end cont;

architecture Behavioral of cont is
	signal contd : integer range 0 to 100_000_000;
	signal sel1,sel2,sel3,sel4 : std_logic_vector (3 downto 0);
	signal estado1, estado2, estado3, estado4	: integer range 0 to 15;
	signal d1,d2,d3,d4 : std_logic_vector (6 downto 0);
	signal presse,pressm,pressd,presss : std_logic;
	-- estados nave
	
	signal navepos : integer range 0 to 15;
begin
	
	USO : entity work.decod
	port map(navepos,
				estado2,
				estado3,
				estado4,
				d1,d2,d3,d4
				);
				
	BOTAOESQ : entity work.debounce
	port map (clk,
			    bte,
				 presse
				 );
	
	BOTAOMEIO : entity work.debounce
	port map (clk,
			    btm,
				 pressm
				 );
	
	BOTAODIR : entity work.debounce
	port map (clk,
			    btd,
				 pressd
				 );
	BOTAOSTART : entity work.debounce
	port map (clk,
			    bte,
				 presss
				 );
				 

	estado2 <= 1;
	estado3 <= 1;
	estado4 <= 1;
	
	sel1 <= "0111";
	sel2 <= "1011";
	sel3 <= "1101";
	sel4 <= "1110";
	
	process(clk)	
	begin
		if(rising_edge(clk)) then
			if contd < 2e6 then
				contd <= contd + 1;
			else
				contd <= 0;
			end if;
						
			if contd <= 5e5 then
				sel <= sel1;
				d <= d1;
			elsif  contd <= 1e6 then
				sel<= sel2;
				d <=d2;
			elsif contd <= 15e5 then
				sel<= sel3;
				d <= d3;
			else 
				sel<= sel4;
				d <= d4;
			end if;
				
		end if;	
	end process;

 -- maquina de estados nave
 
	process(clk)
	begin
		if rising_edge(clk)then
			if navepos = 0 then
				if presse='1' then
					navepos <= 0;
				elsif pressd='1' then
					navepos <= 1;
				end if;					
			end if;
			if navepos = 1 then
				if presse='1' then
					navepos <= 0;
				elsif pressd = '1' then
					navepos <= 2;
				end if;	
			end if;
			if navepos = 2 then
				if presse = '1'then
					navepos <= 1;
				elsif pressd ='1' then
					navepos <= 2;
				end if;	
			end if;
		end if;
		
		
 end process;




end Behavioral;
