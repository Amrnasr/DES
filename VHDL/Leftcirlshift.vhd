
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Leftcirlshift is

port(

clk : in std_logic;
rst : in std_logic;

datain: in std_logic_vector(55 downto 0);
dataout : out std_logic_vector(55 downto 0)




);



end Leftcirlshift;

architecture Behavioral of Leftcirlshift is
signal lefthalf,righthalf : std_logic_vector(27 downto 0);

signal temp1,temp2:  std_logic_vector(27 downto 0);

begin

lefthalf<=datain(55 downto 28);
righthalf<=datain(27 downto 0);


process(clk,rst,lefthalf,righthalf)
begin

  if rst='1' then
  
  
    temp1<=(others=>'0');
	 temp2<=(others=>'0');
     
  
  elsif clk'event and clk='1' then
       temp1<=lefthalf(26 downto 0) & lefthalf(27);
		 temp2<=righthalf(26 downto 0) & righthalf(27);
         
    
  
  end if;


end process;





dataout<=temp1(27 downto 0)&temp2(27 downto 0);


end Behavioral;

