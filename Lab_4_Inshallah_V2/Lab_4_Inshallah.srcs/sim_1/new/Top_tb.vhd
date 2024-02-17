library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_tb is
--  Port ( );
end Top_tb;

architecture Behavioral of Top_tb is
signal Reset, Clock : std_logic := '0';
    signal MemoryDataIn : std_logic_vector(31 downto 0);
    signal MemoryAddress, MemoryDataOut : std_logic_vector(31 downto 0);
    signal MemWrite : std_logic;

    component TopLevel
        Port ( 
            Reset : in std_logic;
            Clock : in std_logic;
            MemoryDataIn : in std_logic_vector(31 downto 0);
            MemoryAddress : out std_logic_vector(31 downto 0);
            MemoryDataOut : out std_logic_vector(31 downto 0);  
            MemWrite : out std_logic
        );
    end component;

begin
    DUT : TopLevel
        port map (
            Reset => Reset,
            Clock => Clock,
            MemoryDataIn => MemoryDataIn,
            MemoryAddress => MemoryAddress,
            MemoryDataOut => MemoryDataOut,
            MemWrite => MemWrite
        );

    -- Clock generation process
    process
    begin
            Clock <= not Clock;  -- Toggle the clock signal
            wait for 5 ns;  -- Half clock period
    end process;


    -- Stimulus generation process
    process
    begin
    
        Reset <= '1';
        wait for 10 ns;
        Reset <= '0';
    
        -- Apply values to MemoryDataIn and other inputs as needed
        --MemoryDataIn <= "00100000000001000000000000000011";  -- Example value for MemoryDataIn
        MemoryDataIn <= "00000000001000000001100000100010";
        --00000000001000000001100000100010

        -- Insert additional test stimulus here

        wait for 200 ns;  -- Run the simulation for 100 ns
        wait;
    end process;

    -- Insert testbench monitoring and assertions here

end behavioral