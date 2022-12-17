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

component MUX2x1
port(A, B: in std_logic_vector(3 downto 0);
S: in std_logic;
Y: out std_logic_vector(3 downto 0));
end component;

signal x, muxD, nextD: std_logic_vector(3 downto 0);

begin

reg: Registry port map(
D => nextD,
CLK => CLK,
E => '1',
Q => x);

RDY <= x(1) and not x(0);
S <= x(1) and x(0);
CE <= x(1) and x(0);
CLR <= not x(1) and not x(0) and not Start;
R <= not x(1) and not x(0) and not Start;
EDS <= not x(1) and not x(0) and not Start;
EDD <= (x(1) and x(0)) or (not x(1) and not x(0) and not Start);
muxD(3) <= '0';
muxD(2) <= '0';
muxD(1) <= (not x(1) and x(0)) or (x(1) and not x(0) and Start);
muxD(0) <= (x(1) and x(0)) or (not x(1) and not x(0) and Start) or (not x(1) and x(0) and Bellow);

mux: MUX2x1 port map(
A => "0000",
B => muxD,
S => RST,
Y => nextD);
end arc_asm;
