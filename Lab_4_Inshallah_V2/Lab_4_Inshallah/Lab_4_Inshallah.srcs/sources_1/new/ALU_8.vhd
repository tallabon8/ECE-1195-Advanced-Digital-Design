library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_8 is
generic(
    n : positive := 32
);
Port ( 
    A, B : in std_logic_vector(n-1 downto 0);
    SHAMT : in std_logic_vector(4 downto 0);
    ALUOp : in std_logic_vector(3 downto 0);
    R : out std_logic_vector(31 downto 0);
    zero, overflow : out std_logic
);
end ALU_8;

architecture Behavioral of ALU_8 is
    signal LogicalR : std_logic_vector(31 downto 0);
    signal ArithR : std_logic_vector(31 downto 0);
    signal CompR : std_logic_vector(31 downto 0);
    signal ShiftR : std_logic_vector(31 downto 0);
    signal carryout : std_logic;
    
    component Shifter_Unit_8 
        generic(
            n : positive := 32
        );
        port(
            A : in std_logic_vector(n-1 downto 0);
            SHAMT : in std_logic_vector(4 downto 0);
            ALUOp : in std_logic_vector(1 downto 0);
            R : out std_logic_vector(n-1 downto 0)
        );
    end component;
    
    component Arith_Unit_8
        generic(
            n : positive := 32
        );
        port(
            A       : IN     std_logic_vector (n-1 DOWNTO 0);
            B       : IN     std_logic_vector (n-1 DOWNTO 0);
            C_op    : IN     std_logic_vector (1 DOWNTO 0);
            CO      : OUT    std_logic;
            OFL     : OUT    std_logic;
            S       : OUT    std_logic_vector (n-1 DOWNTO 0);
            Z       : OUT    std_logic
        );
    end component;
    
    component Logic_Unit_8
        generic(
            n : positive := 32
        );
        port(
            A : in std_logic_vector(n-1 downto 0);
            B: in std_logic_vector(n-1 downto 0);
            Op : in std_logic_vector(1 downto 0);
            R : out std_logic_vector(n-1 downto 0)        
        );
    end component;
    
    component Comparator_Unit_8
        generic(
            n : positive := 32
        );
        port(
            A_31 : in std_logic;
            B_31 : in  std_logic;
            S_31 : in std_logic;
            CO : in std_logic;
            ALUOp : in std_logic_vector(1 downto 0);
            R : out std_logic_vector(n-1 downto 0)            
        );
    end component;
begin
     LU: Logic_Unit_8
     generic map(
        n => n)
     port map(
        A=>A,
        B=>B,
        Op=>ALUOp(1 downto 0),
        R=>LogicalR
     );
     AR : Arith_Unit_8
     generic map(
        n=>n)
     port map(
        A=>A, 
        B=>B, 
        C_op => ALUOp(1 downto 0), 
        CO => carryout, 
        OFL => overflow,
        S => ArithR,
        z=>zero
     );
     CU : Comparator_Unit_8
     generic map(
        n=>n)
     port map(
        A_31=>A(n-1),
        B_31=>B(n-1),
        S_31=>ArithR(n-1),
        CO=>carryout,
        ALUOp=>ALUOp(1 downto 0),
        R=>CompR
     );
     SU : Shifter_Unit_8
     generic map(
        n=>n)
     port map(
        A=>A, 
        SHAMT=>SHAMT,
        ALUOp=>ALUOp(1 downto 0),
        R =>ShiftR
     );
    process(ALUOp, LogicalR, ArithR, CompR, ShiftR)
        begin 
            case ALUOp(3 downto 2) is
                when "00" =>
                    R<=LogicalR;
                when "01" =>
                    R<=ArithR;
                when "10" =>
                    R<=CompR;
                when "11" =>
                    R<=ShiftR;
                when others =>
                    R<=x"00000000";
             end case;
    end process;
end Behavioral;
