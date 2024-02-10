library ieee;
use ieee.std_logic_1164.all;

entity tb_demux is
end tb_demux;

architecture tb_arch of tb_demux is
    component demux is
        port (
            A, S2, S1, S0 : in std_ulogic;
            Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0 : out std_ulogic
        );
    end component;

    signal A, S2, S1, S0 : std_ulogic;
    signal Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0 : std_ulogic;
begin
    UUT: demux port map (
        A => A,
        S2 => S2,
        S1 => S1,
        S0 => S0,
        Y7 => Y7,
        Y6 => Y6,
        Y5 => Y5,
        Y4 => Y4,
        Y3 => Y3,
        Y2 => Y2,
        Y1 => Y1,
        Y0 => Y0
    );

    stimulus_process: process
    begin
        A <= '1';
        S2 <= '0';
        S1 <= '0';
        S0 <= '0';
        wait for 10 ns;

        A <= '1';
        S2 <= '0';
        S1 <= '0';
        S0 <= '1';
        wait for 10 ns;

        A <= '1';
        S2 <= '0';
        S1 <= '1';
        S0 <= '0';
        wait for 10 ns;

        A <= '1';
        S2 <= '0';
        S1 <= '1';
        S0 <= '1';
        wait for 10 ns;

        A <= '1';
        S2 <= '1';
        S1 <= '0';
        S0 <= '0';
        wait for 10 ns;

        A <= '1';
        S2 <= '1';
        S1 <= '0';
        S0 <= '1';
        wait for 10 ns;

        A <= '1';
        S2 <= '1';
        S1 <= '1';
        S0 <= '0';
        wait for 10 ns;

        A <= '1';
        S2 <= '1';
        S1 <= '1';
        S0 <= '1';
        wait for 10 ns;

        wait;
    end process stimulus_process;
end tb_arch;
