library ieee;
use ieee.std_logic_1164.all;

entity ASM_v1 is
port(Start, Bellow, RST, CLK: in std_logic;
S, EDD, EDS, R, CE, CLR, RDY: out std_logic);
end ASM_v1;

architecture arc_asm of ASM_v1 is
component Registry
port(
D:in std_logic_vector(3 downto 0);
CLK, E: in std_logic;
Q: out std_logic_vector(3 downto 0));
end component;

signal x1, x0: std_logic;

begin

reg: Registry port map(
D(3 downto 2) => "00",
D(1 downto 0) => x1 & x0,
CLK => CLK,
E => '1',
Q(1) => x1,
Q(0) => x0);

RDY <= x1 and not x0;
S <= not x1 and x0;
CE <= not x1 and x0;
CLR <= (not x1 and not x0) or (x1 and x0);
R <= (not x1 and not x0) or (x1 and x0);
EDS <= (not x1 and not x0) or (x1 and x0);
EDD <= not x1 or x0;
end arc_asm;
