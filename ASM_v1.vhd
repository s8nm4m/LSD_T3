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

signal x: std_logic_vector(3 downto 0);

begin

reg: Registry port map(
D(3) => '0',
D(2) => '0',
D(1) => x(1),
D(0) => x(0),
CLK => CLK,
E => '1',
Q => x);

RDY <= x(1) and not x(0);
S <= not x(1) and x(0);
CE <= not x(1) and x(0);
CLR <= (not x(1) and not x(0)) or (x(1) and x(0));
R <= (not x(1) and not x(0)) or (x(1) and x(0));
EDS <= (not x(1) and not x(0)) or (x(1) and x(0));
EDD <= not x(1) or x(0);
end arc_asm;
