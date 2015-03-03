
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

------------------------------------------------------------------------
----this module will do the reverse of initial permutation--------------
---------------for DES encryption---------------------------------------
--------DES (Data Encryption Standard)  --------------------------------
------------------------------------------------------------------------

entity IPrev is

port(

 clk: in std_logic;
 plaintext: in std_logic_vector(63 downto 0);
 permutetext: out std_logic_vector(63 downto 0));




end IPrev;

architecture Behavioral of IPrev is
------------------------------------------------------------------
----this block will do initial inverse permutation----------------
------------------------------------------------------------------
-----IP-1---------------------------------------------------------
------------------------------------------------------------------



begin


process(clk,plaintext)
begin

if clk'event and clk='1' then

--40 8 48 16 56 24 64 32
    permutetext(0)<=plaintext(39);
    
     permutetext(1)<=plaintext(7);
	  
	  permutetext(2)<=plaintext(47);
	  
	  permutetext(3)<=plaintext(15);
	  

	  
	  permutetext(4)<=plaintext(55);
	  
	  permutetext(5)<=plaintext(23);

	  permutetext(6)<=plaintext(63);
	  
	  permutetext(7)<=plaintext(31);
	  
--	  39 7 47 15 55 23 63 31

	  permutetext(8)<=plaintext(38);
	  
	  permutetext(9)<=plaintext(6);
	  
	  permutetext(10)<=plaintext(46);
	  
	  permutetext(11)<=plaintext(14);
	  
	  permutetext(12)<=plaintext(54);
	  
	  permutetext(13)<=plaintext(22);
	  
	  permutetext(14)<=plaintext(62);
	  
	   permutetext(15)<=plaintext(30);
	----------------------	
--		38 6 46 14 54 22 62 30
      permutetext(16)<=plaintext(37);
		permutetext(17)<=plaintext(5);
		permutetext(18)<=plaintext(45);
		permutetext(19)<=plaintext(13);
		permutetext(20)<=plaintext(53);
      permutetext(21)<=plaintext(21);
		permutetext(22)<=plaintext(61);
		permutetext(23)<=plaintext(29);
	  --------------------------------
--		37 5 45 13 53 21 61 29			
      permutetext(24)<=plaintext(36);
		permutetext(25)<=plaintext(4);
		permutetext(26)<=plaintext(44);
		permutetext(27)<=plaintext(12);
		permutetext(28)<=plaintext(52);
		permutetext(29)<=plaintext(20);
		permutetext(30)<=plaintext(60);
		permutetext(31)<=plaintext(28);
		---------------------------------------
--		36 4 44 12 52 20 60 28
		permutetext(32)<=plaintext(35);
		permutetext(33)<=plaintext(3);
		permutetext(34)<=plaintext(43);
		permutetext(35)<=plaintext(11);
		permutetext(36)<=plaintext(51);
		permutetext(37)<=plaintext(19);
		permutetext(38)<=plaintext(59);
		permutetext(39)<=plaintext(27);
		---------------------------------
--		35 3 43 11 51 19 59 27
      permutetext(40)<=plaintext(34);
      permutetext(41)<=plaintext(2);
		
		permutetext(42)<=plaintext(42);
		
		permutetext(43)<=plaintext(10);
		
		permutetext(44)<=plaintext(50);
		
		permutetext(45)<=plaintext(18);
		
		permutetext(46)<=plaintext(58);
		
		permutetext(47)<=plaintext(26);
		------------------------------------
--		34 2 42 10 50 18 58 26
      permutetext(48)<=plaintext(33);
		permutetext(49)<=plaintext(1);
		permutetext(50)<=plaintext(41);
		permutetext(51)<=plaintext(9);
		permutetext(52)<=plaintext(49);
		permutetext(53)<=plaintext(17);
		permutetext(54)<=plaintext(57);
    	permutetext(55)<=plaintext(25);
--
   ------------------------------------
--33 1 41 9 49 17 57 25
           permutetext(56)<=plaintext(32);
			  permutetext(57)<=plaintext(0);
			  permutetext(58)<=plaintext(40);
			  permutetext(59)<=plaintext(8);
			  permutetext(60)<=plaintext(48);
			  permutetext(61)<=plaintext(16);
			  permutetext(62)<=plaintext(56);
			  permutetext(63)<=plaintext(24);
		
end if;






end process;





end Behavioral;

