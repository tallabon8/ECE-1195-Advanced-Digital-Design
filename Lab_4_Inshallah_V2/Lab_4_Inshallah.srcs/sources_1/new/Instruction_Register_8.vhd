library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Instruction_Register_8 is
Port (
    CLK, RST, IRWrite : in std_logic;
    MemData : in std_logic_vector(31 downto 0);
    Instr31to26 : out std_logic_vector(5 downto 0);
    Instr25to21, Instr20to16 : out std_logic_vector(4 downto 0);
    Instr15to0 : out std_logic_vector(15 downto 0);
    Instr15to11: out std_logic_vector(4 downto 0);
    Instr25to0 : out std_logic_vector(25 downto 0);
    Funct : out std_logic_vector(5 downto 0);
    Inst10to6 : out std_logic_vector(4 downto 0)
 );
end Instruction_Register_8;

architecture Behavioral of Instruction_Register_8 is
begin
    process(CLK, RST, MemData, IRWrite)
        begin 
            if (RST = '1') then 
                Instr31to26<=(others=>'0');
                Instr25to21<=(others=>'0');
                Instr20to16<=(others=>'0');
                Instr15to0<=(others=>'0');
            elsif (CLK' event and CLK = '1') then 
                if (IRWrite = '1') then 
                Instr31to26<=MemData(31 downto 26);
                Instr25to21<=MemData(25 downto 21);
                Instr20to16<=MemData(20 downto 16);
                Instr15to0<=MemData(15 downto 0);
                Instr15to11<=MemData(15 downto 11);    
                Instr25to0<=MemData(25 downto 0);
                Funct<=MemData(5 downto 0);   
                Inst10to6<=MemData(10 downto 6);             
                end if;
            end if;
    end process;
end Behavioral;
