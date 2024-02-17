library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier_Top_Level_8 is
generic(
    W64 : integer := 64; --64 bits
    W32: integer :=32 --32 bits
);
Port ( 
    A, B : in std_logic_vector(W32-1 downto 0); -- A and B input 64 bit numbers
    CLK, RST : in std_logic; --clock and reset 
    R : out std_logic_vector(W64-1 downto 0); --64 bit product result vector
    DONE : out std_logic --done output to indicate the multiplication process has completedend Multiplier_Top_Level_8;
);
end Multiplier_Top_Level_8;

architecture Behavioral of Multiplier_Top_Level_8 is
--fsm component
component mult_control_unit_8 is
    Port (
        CLK, RST, product : in std_logic;
        COUNT : in std_logic_vector(4 downto 0);
        NEXTSTATE, PRODUCTWRITE, SHIFTLEFT, SHIFTRIGHT, DONE, MULTIPLIER, MULTIPLICAND : out std_logic
    );
end component;
--multiplier component
component shift_32_bit_8 is
  Port ( 
    CLK, LOAD, SHIFT, RST : in std_logic;
    D : in std_logic_vector(W32-1 downto 0);
    Q : out std_logic_vector(W32-1 downto 0)
  );
end component;
--multiplicand component
component shift_64_bit_8 is
  Port ( 
  CLK, LOAD, SHIFT, RST : in std_logic;
  D : in std_logic_vector(W64-1 downto 0);
  Q : out std_logic_vector(W64-1 downto 0)
  );
end component;
--counter component, ensures 32 iterations
component counter5bit is
    Port (
        countup : in std_logic;
        clk, rst : in std_logic;
        count : out std_logic_vector(4 downto 0)
    );
end component;
--ALU/adder
component adder_64_bit_8 is
Port ( 
   A, B : in std_logic_vector(W64-1 downto 0);
   S : out std_logic_vector(W64-1 downto 0)
);
end component;
--generic 64 bit register
component flipflop IS
   PORT( 
      CLK : IN     std_logic;
      D   : IN     std_logic_vector(W64-1 downto 0);
      EN  : IN     std_logic;
      RST : IN     std_logic;
      Q   : OUT    std_logic_vector(W64-1 downto 0)
   );
END component;
-- A64: A 64-bit signal to store the extended input A, with lower 32 bits copied from A and upper 32 bits set to 0
signal A64 : std_logic_vector(W64-1 downto 0);
-- Q64: A 64-bit signal to store the output of the 64-bit shift operation for the multiplicand
signal Q64 : std_logic_vector(W64-1 downto 0);
-- Q32: A 32-bit signal to store the output of the 32-bit shift operation for the multiplier
signal Q32 : std_logic_vector(W32-1 downto 0);
-- Reg: A 64-bit signal to store the result of the ALU operation (64-bit addition)
signal Reg : std_logic_vector(W64-1 downto 0);
-- ALUout: A 64-bit signal to store the output of the ALU (64-bit addition) operation
signal ALUout : std_logic_vector(W64-1 downto 0);
-- multiplier: A control signal to enable loading of the multiplier shift register
signal multiplier, multiplicand : std_logic;
-- shiftleft, shiftright: Control signals to enable shifting in the shift registers
signal shiftleft, shiftright : std_logic;
-- en: A control signal to enable writing the result into the flip-flop
signal en, upcount : std_logic;
-- count: A 5-bit signal to keep track of the number of clock cycles or states
signal count : std_logic_vector(4 downto 0);

begin
    A64(63 downto 32) <= (others=>'0'); --sets the upper 32 bits to 0
    A64(31 downto 0) <= A;  --copies A into lower 32 bits
    --instantiate counter
    C : counter5bit
    port map(
        countup=>upcount,
        CLK=>CLK, 
        rst=>rst,
        count=>count
    );
    --instantiate multiplier reg
    S32 : shift_32_bit_8 --multiplier
    port map(
        clk=>clk, 
        load=>multiplier,
        rst=>rst,
        D=>B,
        shift=>shiftright,
        Q=>Q32
    );
    --instantiate multiplicand reg
    S64 : shift_64_bit_8 --multiplicand
    port map(
        D=>A64, 
        Load=>multiplicand, 
        shift=>shiftleft,
        clk=>clk,
        rst=>rst, 
        Q=>Q64
    );
    --instantate 64 bit generic addder
    R64 : flipflop
    port map(
        clk=>clk, 
        D=>ALUout, 
        rst=>rst, 
        en=>en,
        Q=>Reg
    );
    --instantiate alu
    ALU : adder_64_bit_8
    port map(
        A=>Reg, 
        B=>Q64,
        --K=>'0',
        S=>ALUout
    );
    --instantiate control unit
    CU : mult_control_unit_8
    port map(
        clk=>clk,
        rst=>rst,
        done=>done,
        count=>count,
        nextstate=>upcount,
        shiftleft=>shiftleft,
        shiftright=>shiftright,
        multiplier=>multiplier,
        multiplicand=>multiplicand,
        productwrite=>en,
        product=>Q32(0)
    ); 
    --outputs result
    R<=Reg;
end Behavioral;
