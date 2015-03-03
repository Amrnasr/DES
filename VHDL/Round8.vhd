
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Round8 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);

end Round8;

architecture Behavioral of Round8 is

component Leftcirlshift is

port(

clk : in std_logic;
rst : in std_logic;

datain: in std_logic_vector(55 downto 0);
dataout : out std_logic_vector(55 downto 0)
);
end component;

component PC2 is
port (

  
clk : in std_logic;

rst : in std_logic;

key : in std_logic_vector(55 downto 0);

PC2key : out std_logic_vector(47 downto 0) );


end component;

component ExpansionE is
port(


clk: in std_logic;
input: in std_logic_vector(31 downto 0);
expanded: out std_logic_vector(47 downto 0));


end component;

component permutation is
port(

clk : in std_logic;
rst : in std_logic;
datain: in std_logic_vector(31 downto 0);
dataout : out std_logic_vector(31 downto 0)
);


end component;

component Sbox1 is

port(

 clk : in std_logic;
 rst : in std_logic;
 Sin: in std_logic_vector(5 downto 0);
 Sout : out std_logic_vector(3 downto 0) 

);
end component;

component Sbox2 is
port(
 
 clk : in std_logic;
 rst : in std_logic;
 Sin: in std_logic_vector(5 downto 0);
 Sout : out std_logic_vector(3 downto 0) 
);
end component;

component Sbox3 is
port(
 
 clk : in std_logic;
 rst : in std_logic;
 Sin: in std_logic_vector(5 downto 0);
 Sout : out std_logic_vector(3 downto 0) 
);

end component;

component Sbox4 is
port(

clk : in std_logic;
 rst : in std_logic;
 Sin: in std_logic_vector(5 downto 0);
 Sout : out std_logic_vector(3 downto 0) 
);

end component;

component Sbox5 is

port(

clk : in std_logic;
 rst : in std_logic;
 Sin: in std_logic_vector(5 downto 0);
 Sout : out std_logic_vector(3 downto 0) 
);

end component;

component Sbox6 is
port(

clk : in std_logic;
 rst : in std_logic;
 Sin: in std_logic_vector(5 downto 0);
 Sout : out std_logic_vector(3 downto 0) 
);
end component;

component Sbox7 is
port(

clk : in std_logic;
 rst : in std_logic;
 Sin: in std_logic_vector(5 downto 0);
 Sout : out std_logic_vector(3 downto 0) 
);
end component;

component Sbox8 is
port(

clk : in std_logic;
 rst : in std_logic;
 Sin: in std_logic_vector(5 downto 0);
 Sout : out std_logic_vector(3 downto 0) 

);
end component;

signal Sbox1in,Sbox2in,Sbox3in,Sbox4in,Sbox5in,Sbox6in,Sbox7in,Sbox8in: std_logic_vector(5 downto 0);
signal Sbox1out,Sbox2out,Sbox3out,Sbox4out,Sbox5out,Sbox6out,Sbox7out,Sbox8out : std_logic_vector(3 downto 0);
signal PC2key: std_logic_vector(47 downto 0);

signal keytoPC2: std_logic_vector(55 downto 0);
signal L,R ,L1,R1: std_logic_vector(31 downto 0);
signal expandedtemp: std_logic_vector(47 downto 0);

signal F : std_logic_vector(47 downto 0);

signal P,Pout,P1 : std_logic_vector(31 downto 0);
signal leftshift1: std_logic_vector(55 downto 0);


begin

F<=expandedtemp xor PC2key;


L<=plaintext(63 downto 32);
R<=plaintext(31 downto 0);

Sbox1in <=F(47 downto 42);
Sbox2in <=F(41 downto 36);
Sbox3in <=F(35 downto 30);
Sbox4in <=F(29 downto 24);
Sbox5in <=F(23 downto 18);
Sbox6in <=F(17 downto 12);
Sbox7in <=F(11 downto 6);
Sbox8in <=F(5 downto 0);


P<=Sbox1out&Sbox2out&Sbox3out&Sbox4out&Sbox5out&Sbox6out&Sbox7out&Sbox8out;

P1<=Pout xor L;
L1<=R;

R1<=P1;

plainout<=L1&R1;

keyout<=keytoPC2;

u1: Sbox1 port map

(
clk => clk,
 rst => rst,
 Sin => Sbox1in ,
 Sout => Sbox1out
);

u2:  Sbox2 port map

(
clk => clk,
 rst => rst,
 Sin => Sbox2in ,
 Sout => Sbox2out
);

u3:  Sbox3 port map

(
clk => clk,
 rst => rst,
 Sin => Sbox3in ,
 Sout => Sbox3out
);

u4:  Sbox4 port map

(
clk => clk,
 rst => rst,
 Sin => Sbox4in ,
 Sout => Sbox4out
);

u5:  Sbox5 port map

(
clk => clk,
 rst => rst,
 Sin => Sbox5in ,
 Sout => Sbox5out
);

u6:  Sbox6 port map

(
clk => clk,
 rst => rst,
 Sin => Sbox6in ,
 Sout => Sbox6out
);

u7:  Sbox7 port map

(
clk => clk,
 rst => rst,
 Sin => Sbox7in ,
 Sout => Sbox7out
);


u8:  Sbox8 port map

(
clk => clk,
 rst => rst,
 Sin => Sbox8in ,
 Sout => Sbox8out
);

u9: PC2 port map

(

 clk => clk,

rst  => rst,

key => keytoPC2,

PC2key => PC2key



);

u10: Leftcirlshift port map

(
clk => clk,
rst => rst,

datain => key,
dataout => leftshift1




);

u13: Leftcirlshift port map

(
clk => clk,
rst => rst,

datain => leftshift1,
dataout => keytoPC2




);

u11: ExpansionE port map
(

clk=> clk,
input => R,
expanded => expandedtemp

);


u12: permutation port map
(
clk => clk,
rst => rst,
datain=> P,
dataout => Pout



);





















end Behavioral;

