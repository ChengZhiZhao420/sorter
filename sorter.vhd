library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sorter is
port (clk: in std_logic;
reset: in std_logic;
weight: in std_logic_vector (0 to 11);
grp1, grp2, grp3, grp4, grp5, grp6: buffer std_logic_vector (0 to 7):= "00000000";
currentGrp: out std_logic_vector (0 to 2));
end sorter;

architecture bhv of sorter is
begin
process(clk, reset)

begin
if (reset = '1') then
grp1 <= "00000000";
grp2 <= "00000000";
grp3 <= "00000000";
grp4 <= "00000000";
grp5 <= "00000000";
grp6 <= "00000000";
currentGrp <= "000";

elsif (clk'event and clk = '1' and reset = '0') then
if (to_integer(unsigned(weight)) = 0) then
currentGrp <= "000";

elsif (to_integer(unsigned(weight)) > 0 and to_integer(unsigned(weight)) <= 200) then
grp1 <= std_logic_vector(unsigned(grp1) + 1);
currentGrp <= "001";

elsif (to_integer(unsigned(weight)) > 200 and to_integer(unsigned(weight)) <= 500 )then
grp2 <= std_logic_vector(unsigned(grp2) + 1);
currentGrp <= "010";

elsif (to_integer(unsigned(weight)) > 500 and to_integer(unsigned(weight)) <= 800)then
grp3 <= std_logic_vector(unsigned(grp3) + 1);
currentGrp <= "011";

elsif (to_integer(unsigned(weight)) > 800 and to_integer(unsigned(weight)) <= 1000) then
grp4 <= std_logic_vector(unsigned(grp4) + 1);
currentGrp <= "100";

elsif (to_integer(unsigned(weight)) > 1000 and to_integer(unsigned(weight)) <= 2000) then
grp5 <= std_logic_vector(unsigned(grp5) + 1);
currentGrp <= "101";

elsif (to_integer(unsigned(weight)) > 2000) then
grp6 <= std_logic_vector(unsigned(grp6) + 1);
currentGrp <= "110";

end if;
end if;
end process;
end bhv;
