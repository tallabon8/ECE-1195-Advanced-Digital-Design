library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mult_control_unit_test_bench_8 is
end mult_control_unit_test_bench_8;

architecture Behavioral of mult_control_unit_test_bench_8 is
    signal CLK, RST, PRODUCT : std_logic := '0';
    signal COUNT : std_logic_vector(4 downto 0) := "00000";
    signal NEXTSTATE, PRODUCTWRITE, SHIFTLEFT, SHIFTRIGHT, DONE, MULTIPLIER, MULTIPLICAND : std_logic;

    component mult_control_unit_8 is 
    Port (
        CLK, RST, PRODUCT : in std_logic;
        COUNT : in std_logic_vector(4 downto 0);
        NEXTSTATE, PRODUCTWRITE, SHIFTLEFT, SHIFTRIGHT, DONE, MULTIPLIER, MULTIPLICAND : out std_logic
    );
    end component;
    
begin
    CU : mult_control_unit_8 
    port map(
        CLK=>CLK,
        RST=>RST, 
        PRODUCT=>PRODUCT, 
        COUNT=>COUNT, 
        NEXTSTATE=>NEXTSTATE, 
        PRODUCTWRITE=>PRODUCTWRITE,
        SHIFTLEFT=>SHIFTLEFT, 
        SHIFTRIGHT=>SHIFTRIGHT, 
        DONE=>DONE, 
        MULTIPLIER=>MULTIPLIER,
        MULTIPLICAND=>MULTIPLICAND
    );
    
    -- Clock process
    CLK_GEN : process
    begin 
        CLK <= '0';
        wait for 5 ns;
        CLK <= '1';
        wait for 5 ns;
    end process CLK_GEN;
    
    -- FSM initialization process
    FSM_INIT : process
    begin 
        --Test 1
        RST<='1';
        PRODUCT<='0';
        COUNT<="00000";
        wait for 10 ns;
        assert (NEXTSTATE='0') report "next state error" severity error;
        assert (PRODUCTWRITE='0') report "prod error" severity error;
        assert (SHIFTLEFT='0') report "shift left error 1" severity error;
        assert (SHIFTRIGHT='0') report "shift right errror 1" severity error;
        assert (DONE='0') report "done error" severity error;
        assert (MULTIPLIER='1') report "multiplier error" severity error;
        assert (MULTIPLICAND='1') report "multiplicand error" severity error;
        --Test 2
        RST<='0';
        PRODUCT<='0';
        COUNT<="00000";
        wait for 10 ns;
        assert (NEXTSTATE='1') report "next state error 2" severity error;
        assert (PRODUCTWRITE='0') report "prod error 2" severity error;
        assert (SHIFTLEFT='1') report "shift left error 2" severity error;
        assert (SHIFTRIGHT='1') report "shift right errror 2" severity error;
        assert (DONE='0') report "done error 2" severity error;
        assert (MULTIPLIER='1') report "multiplier error 2" severity error;
        assert (MULTIPLICAND='1') report "multiplicand error 2" severity error;
        --Test 3
        RST<='0';   
        PRODUCT<='0';
        COUNT<="00001";
        wait for 10 ns;
        assert (NEXTSTATE='1') report "next state error 2" severity error;
        assert (PRODUCTWRITE='0') report "prod error 2" severity error;
        assert (SHIFTLEFT='1') report "shift left error 2" severity error;
        assert (SHIFTRIGHT='1') report "shift right errror 2" severity error;
        assert (DONE='0') report "done error 2" severity error;
        assert (MULTIPLIER='1') report "multiplier error 2" severity error;
        assert (MULTIPLICAND='1') report "multiplicand error 2" severity error;        
        --Test 3
        RST<='0';   
        PRODUCT<='0';
        COUNT<="11111";
        wait for 10 ns;
        assert (NEXTSTATE='1') report "next state error 3" severity error;
        assert (PRODUCTWRITE='0') report "prod error 3" severity error;
        assert (SHIFTLEFT='1') report "shift left error 3" severity error;
        assert (SHIFTRIGHT='1') report "shift right errror 3" severity error;
        assert (DONE='1') report "done error 3" severity error;
        assert (MULTIPLIER='1') report "multiplier error 3" severity error;
        assert (MULTIPLICAND='1') report "multiplicand error 3" severity error;               
        wait;
    end process FSM_INIT;
end Behavioral;
