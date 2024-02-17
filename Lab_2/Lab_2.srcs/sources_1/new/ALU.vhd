----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2023 02:27:58 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
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
end ALU;

architecture Behavioral of ALU is
    signal LogicalR : std_logic_vector(31 downto 0);
    signal ArithR : std_logic_vector(31 downto 0);
    signal CompR : std_logic_vector(31 downto 0);
    signal ShiftR : std_logic_vector(31 downto 0);
    signal carryout : std_logic;
    
    component shifter_unit 
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
    
    component Arith_Unit
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
    
    component Logical
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
    
    component comparator_unit
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
     LU: Logical
     generic map(
        n => n)
     port map(
        A=>A,
        B=>B,
        Op=>ALUOp(1 downto 0),
        R=>LogicalR
     );
     AR : Arith_Unit
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
     CU : comparator_unit
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
     SU : shifter_unit
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
