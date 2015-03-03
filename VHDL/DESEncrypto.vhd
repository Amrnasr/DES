
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DESEncrypto is
port
(

 clk: in std_logic;
 rst : in std_logic;
 
 plaintext: in std_logic_vector(63 downto 0);
 key :     in std_logic_vector(63 downto 0);
 ciphertext : out std_logic_vector(63 downto 0)



);



end DESEncrypto;

architecture Behavioral of DESEncrypto is

component PC1 is
port (
  
clk : in std_logic;
rst : in std_logic;
key : in std_logic_vector(63 downto 0);
PC1key : out std_logic_vector(55 downto 0) );

end component;

component IP is
port(

 clk: in std_logic;
 plaintext: in std_logic_vector(63 downto 0);
 permutetext: out std_logic_vector(63 downto 0));


end component;

component IPrev is
port(

 clk: in std_logic;
 plaintext: in std_logic_vector(63 downto 0);
 permutetext: out std_logic_vector(63 downto 0));

end component;

component Round1 is

port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);

end component;

component Round2 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);

end component;

component Round3 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);
end component;

component Round4 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);

end component;

component Round5 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);
end component;

component Round6 is

port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);

end component;

component Round7 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);

end component;

component Round8 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);

end component;

component Round9 is

port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);
end component;

component Round10 is

port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);
end component;

component Round11 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)
);
end component;

component Round12 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);
end component;

component Round13 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);

end component;

component Round14 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)
);
end component;

component Round15 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);
end component;


component Round16 is
port (
 clk : in std_logic;
 rst : in std_logic;

 plaintext: in std_logic_vector(63 downto 0);
 key      : in std_logic_vector(55 downto 0); 
 keyout   : out std_logic_vector(55 downto 0);
 plainout : out std_logic_vector(63 downto 0)

);
end component;

signal PC1key : std_logic_vector(55 downto 0);
signal permutetext: std_logic_vector(63 downto 0);

signal Round1key,Round2key,Round3key,Round4key,Round5key,Round6key,Round7key,Round8key,Round9key,Round10key,Round11key,Round12key,Round13key,Round14key,Round15key,Round16key: std_logic_vector(55 downto 0);
signal Round1cipher,Round2cipher,Round3cipher,Round4cipher,Round5cipher,Round6cipher,Round7cipher,Round8cipher,Round9cipher,Round10cipher,Round11cipher,Round12cipher,Round13cipher,Round14cipher,Round15cipher,Round16cipher: std_logic_vector(63 downto 0);

signal swap : std_logic_vector(63 downto 0);

begin

swap(31 downto 0) <= Round16cipher(63 downto 32);
swap(63 downto 32) <=Round16cipher(31 downto 0);





u1: PC1 port map
(
  
clk => clk,
rst => rst,
key => key,
PC1key => PC1key
);

u2: IP port map
(
clk          => clk,
 plaintext   => plaintext,
 permutetext => permutetext

);

u3: Round1 port map
(
  clk => clk,
  rst => rst,

 plaintext => permutetext,
 key       => PC1key, 
 keyout    => Round1key,
 plainout  => Round1cipher


);

u4: Round2 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round1cipher,
 key       => Round1key, 
 keyout    => Round2key,
 plainout  => Round2cipher


);

u5: Round3 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round2cipher,
 key       => Round2key, 
 keyout    => Round3key,
 plainout  => Round3cipher
);


u6: Round4 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round3cipher,
 key       => Round3key, 
 keyout    => Round4key,
 plainout  => Round4cipher
);

u7: Round5 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round4cipher,
 key       => Round4key, 
 keyout    => Round5key,
 plainout  => Round5cipher
);

u8: Round6 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round5cipher,
 key       => Round5key, 
 keyout    => Round6key,
 plainout  => Round6cipher
);


u9: Round7 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round6cipher,
 key       => Round6key, 
 keyout    => Round7key,
 plainout  => Round7cipher
);

u10: Round8 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round7cipher,
 key       => Round7key, 
 keyout    => Round8key,
 plainout  => Round8cipher
);

u11: Round9 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round8cipher,
 key       => Round8key, 
 keyout    => Round9key,
 plainout  => Round9cipher
);

u12: Round10 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round9cipher,
 key       => Round9key, 
 keyout    => Round10key,
 plainout  => Round10cipher
);


u13: Round11 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round10cipher,
 key       => Round10key, 
 keyout    => Round11key,
 plainout  => Round11cipher
);


u14: Round12 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round11cipher,
 key       => Round11key, 
 keyout    => Round12key,
 plainout  => Round12cipher
);


u15: Round13 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round12cipher,
 key       => Round12key, 
 keyout    => Round13key,
 plainout  => Round13cipher
);


u16: Round14 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round13cipher,
 key       => Round13key, 
 keyout    => Round14key,
 plainout  => Round14cipher
);

u17: Round15 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round14cipher,
 key       => Round14key, 
 keyout    => Round15key,
 plainout  => Round15cipher
);


u18: Round16 port map
(
  clk => clk,
  rst => rst,

 plaintext => Round15cipher,
 key       => Round15key, 
 keyout    => Round16key,
 plainout  => Round16cipher
);

u19: IPrev port map
(

 clk=> clk,
 plaintext=> swap,
 permutetext=> ciphertext

);

end Behavioral;

