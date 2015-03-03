
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity permutation is
port(

clk : in std_logic;
rst : in std_logic;
datain: in std_logic_vector(31 downto 0);
dataout : out std_logic_vector(31 downto 0)
);


end permutation;

architecture Behavioral of permutation is
signal temp : std_logic_vector(31 downto 0);
begin

--16 7  20 21 29 12 28 17
--1  15 23 26 5  18 31 10
--2  8  24 14 32 27 3  9
--19 13 30 6  22 11 4  25

process(clk,rst)
begin

if rst='1' then

  temp<=(others=>'0');

elsif clk'event and clk='1' then
---row #1 -----------------------
--16 7  20 21 29 12 28 17--------

temp(0) <=datain(15);
temp(1) <=datain(6);
temp(2) <=datain(19);
temp(3) <=datain(20);
temp(4) <=datain(28);
temp(5) <=datain(11);
temp(6) <=datain(27);
temp(7) <=datain(16);

------------------------------------
----row #2 -------------------------
----1  15 23 26 5  18 31 10---------
------------------------------------

temp(8)  <=datain(0);
temp(9)  <=datain(14);
temp(10) <=datain(22);
temp(11) <=datain(25);
temp(12) <=datain(4);
temp(13) <=datain(17);
temp(14) <=datain(30);
temp(15) <=datain(9);

----------------------------------------
--------row #3--------------------------
-----2  8  24 14 32 27 3  9-------------
----------------------------------------

temp(16) <=datain(1);
temp(17) <=datain(7);
temp(18) <=datain(23);
temp(19) <=datain(13);
temp(20) <=datain(31);
temp(21) <=datain(26);
temp(22) <=datain(2);
temp(23) <=datain(8);


-----------------------------------------
-------row #4----------------------------
-----------------------------------------
--19 13 30 6  22 11 4  25----------------
-----------------------------------------

temp(24) <=datain(18);
temp(25) <=datain(12);
temp(26) <=datain(29);
temp(27) <=datain(5);
temp(28) <=datain(21);
temp(29) <=datain(10);
temp(30) <=datain(3);
temp(31) <=datain(24);




  

end if;




end process;

dataout<=temp;


end Behavioral;

