library IEEE;
use IEEE.std_logic_1164.all;
use work.IOU_TESTBENCH_PACKAGE.all;

entity VIDEO_ADDR_MUX_SPY is
    port (
        PG2_N          : in std_logic;
        EN80VID        : in std_logic;
        HIRESEN_N      : in std_logic;
        VA, VB, VC     : in std_logic;
        Q3_PRAS_N      : in std_logic;
        PRAS_N         : in std_logic;
        P_PHI_1        : in std_logic;
        V0, V1, V2     : in std_logic;
        H0, H1, H2     : in std_logic;
        E0, E1, E2, E3 : in std_logic;

        ZA, ZB, ZC, ZD, ZE : out std_logic;
        RA_ENABLE_N        : out std_logic;
        RA0, RA1, RA2, RA3,
        RA4, RA5, RA6, RA7 : out std_logic
    );
end VIDEO_ADDR_MUX_SPY;

architecture SPY of VIDEO_ADDR_MUX_SPY is
    component VIDEO_ADDR_MUX is
        port (
            PG2_N          : in std_logic;
            EN80VID        : in std_logic;
            HIRESEN_N      : in std_logic;
            VA, VB, VC     : in std_logic;
            Q3_PRAS_N      : in std_logic;
            PRAS_N         : in std_logic;
            P_PHI_1        : in std_logic;
            V0, V1, V2     : in std_logic;
            H0, H1, H2     : in std_logic;
            E0, E1, E2, E3 : in std_logic;

            ZA, ZB, ZC, ZD, ZE : out std_logic;
            RA_ENABLE_N        : out std_logic;
            RA0, RA1, RA2, RA3,
            RA4, RA5, RA6, RA7 : out std_logic
        );
    end component;
begin
    U_VIDEO_ADDR_MUX : VIDEO_ADDR_MUX port map(
        PG2_N       => PG2_N,
        EN80VID     => EN80VID,
        HIRESEN_N   => HIRESEN_N,
        VA          => VA,
        VB          => VB,
        VC          => VC,
        Q3_PRAS_N   => Q3_PRAS_N,
        PRAS_N      => PRAS_N,
        P_PHI_1     => P_PHI_1,
        V0          => V0,
        V1          => V1,
        V2          => V2,
        H0          => H0,
        H1          => H1,
        H2          => H2,
        E0          => E0,
        E1          => E1,
        E2          => E2,
        E3          => E3,
        ZA          => ZA,
        ZB          => ZB,
        ZC          => ZC,
        ZD          => ZD,
        ZE          => ZE,
        RA_ENABLE_N => RA_ENABLE_N,
        RA0         => RA0,
        RA1         => RA1,
        RA2         => RA2,
        RA3         => RA3,
        RA4         => RA4,
        RA5         => RA5,
        RA6         => RA6,
        RA7         => RA7
    );

    TB_RA_ENABLE_N <= RA_ENABLE_N;
    TB_MUX_RA0     <= RA0;
    TB_MUX_RA1     <= RA1;
    TB_MUX_RA2     <= RA2;
    TB_MUX_RA3     <= RA3;
    TB_MUX_RA4     <= RA4;
    TB_MUX_RA5     <= RA5;
    TB_MUX_RA6     <= RA6;
    TB_MUX_RA7     <= RA7;

end SPY;
