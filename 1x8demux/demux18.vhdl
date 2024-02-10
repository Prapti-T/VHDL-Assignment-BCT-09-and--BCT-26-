library ieee;
use ieee.std_logic_1164.all;

entity demux is
port(
    A, S2, S1, S0 : in std_ulogic;
    Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0 : out std_ulogic
);
end demux;

architecture demux_arch of demux is
begin
	Y7<=S0 and S1 and S2 and A;
	Y6<=(not S0) and S1 and S2 and A;
	Y5<=S0 and (not S1) and S2 and A;
	Y4<=(not S0) and (not S1) and S2 and A;
	Y3<=S0 and S1 and (not S1) and A;
	Y2<=(not S0) and S1 and (not S2) and A;
	Y1<=S0 and (not S1) and (not S2) and A;
	Y0<=(not S0) and (not S1) and (not S2) and A;
end demux_arch;

