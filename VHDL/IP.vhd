
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-----------------------------------------------------------------------------------
------this block(module) will do initial permutation for DES encryption------------
-----------------------------------------------------------------------------------
----------------------------------------------------------------------------------- 
entity IP is
port(

 clk: in std_logic;
 plaintext: in std_logic_vector(63 downto 0);
 permutetext: out std_logic_vector(63 downto 0));




end IP;

architecture Behavioral of IP is
--------------------------------------------------------------
----Initial Permutation for plaintext-------------------------
----in DES (Data Encryption Standard)-------------------------
--------------------------------------------------------------
begin

process(clk,plaintext)
begin

if clk'event and clk='1' then


    permutetext(0)<=plaintext(57);
    
     permutetext(1)<=plaintext(49);
	  
	  permutetext(2)<=plaintext(41);
	  
	  permutetext(3)<=plaintext(33);
	  
--	  58 50 42 34 26 18 10 2
	  
	  permutetext(4)<=plaintext(25);
	  
	  permutetext(5)<=plaintext(17);

	  permutetext(6)<=plaintext(9);
	  
	  permutetext(7)<=plaintext(1);
	  
--	  60 52 44 36 28 20 12 4

	  permutetext(8)<=plaintext(59);
	  
	  permutetext(9)<=plaintext(51);
	  
	  permutetext(10)<=plaintext(43);
	  
	  permutetext(11)<=plaintext(35);
	  
	  permutetext(12)<=plaintext(27);
	  
	  permutetext(13)<=plaintext(19);
	  
	  permutetext(14)<=plaintext(11);
	  
	   permutetext(15)<=plaintext(3);
		
--		62 54 46 38 30 22 14 6
      permutetext(16)<=plaintext(61);
		permutetext(17)<=plaintext(53);
		permutetext(18)<=plaintext(45);
		permutetext(19)<=plaintext(37);
		permutetext(20)<=plaintext(29);
      permutetext(21)<=plaintext(21);
		permutetext(22)<=plaintext(13);
		permutetext(23)<=plaintext(5);
	  
--		64 56 48 40 32 24 16 8				
      permutetext(24)<=plaintext(63);
		permutetext(25)<=plaintext(55);
		permutetext(26)<=plaintext(47);
		permutetext(27)<=plaintext(39);
		permutetext(28)<=plaintext(31);
		permutetext(29)<=plaintext(23);
		permutetext(30)<=plaintext(15);
		permutetext(31)<=plaintext(7);
		
--		57 49 41 33 25 17 9 1
		permutetext(32)<=plaintext(56);
		permutetext(33)<=plaintext(48);
		permutetext(34)<=plaintext(40);
		permutetext(35)<=plaintext(32);
		permutetext(36)<=plaintext(24);
		permutetext(37)<=plaintext(16);
		permutetext(38)<=plaintext(8);
		permutetext(39)<=plaintext(0);
		
--		59 51 43 35 27 19 11 3
      permutetext(40)<=plaintext(58);
      permutetext(41)<=plaintext(50);
		
		permutetext(42)<=plaintext(42);
		
		permutetext(43)<=plaintext(34);
		
		permutetext(44)<=plaintext(26);
		
		permutetext(45)<=plaintext(18);
		
		permutetext(46)<=plaintext(10);
		
		permutetext(47)<=plaintext(2);
		
--		61 53 45 37 29 21 13 5
      permutetext(48)<=plaintext(60);
		permutetext(49)<=plaintext(52);
		permutetext(50)<=plaintext(44);
		permutetext(51)<=plaintext(36);
		permutetext(52)<=plaintext(28);
		permutetext(53)<=plaintext(20);
		permutetext(54)<=plaintext(12);
    	permutetext(55)<=plaintext(4);
--
--63 55 47 39 31 23 15 7
           permutetext(56)<=plaintext(62);
			  permutetext(57)<=plaintext(54);
			  permutetext(58)<=plaintext(46);
			  permutetext(59)<=plaintext(38);
			  permutetext(60)<=plaintext(30);
			  permutetext(61)<=plaintext(22);
			  permutetext(62)<=plaintext(14);
			  permutetext(63)<=plaintext(6);
		
end if;






end process;












end Behavioral;

