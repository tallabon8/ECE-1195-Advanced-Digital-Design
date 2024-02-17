library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Control_Unit_8 is
Port (
    CLK, RST, DONE_FLAG : in std_logic;
    OpCode, Funct : in std_logic_vector(5 downto 0);
    PCWriteCond, PCWrite, IorD, MemWrite, IRWrite, ALUsrcA, RegWrite, SLLControl, ALUWrite, SL32EN, SL28EN, AWrite, BWrite : out std_logic;
    MemtoReg : out std_logic_vector(2 downto 0);
    PCSource, ALUsrcB : out std_logic_vector(1 downto 0);
    ALUOp : out std_logic_vector(3 downto 0);
    MemRead : out std_logic_vector(31 downto 0);
    RegDst, MDREN : out std_logic;
    SHAMTEN, ZeroEN, CLOEN, HIEN, LOEN, MultEN : out std_logic
    --AMSB, zero, shift16, SLLV, CLO, A2PC, NG, HiWrite ,LoWrite, MDone, MReset : out std_logic;
    --LW : out std_logic_vector(1 downto 0)
 );
end Control_Unit_8;

architecture Behavioral of Control_Unit_8 is
    type state_type is (fetch, decode, Mem_addr_comp, jump, Mult_execute, Branch_execute, Branch_store, I_execute, R_execute, Mem_acc_sw, Mem_acc_lw, I_done, R_done, Mult_done, Mem_read);
    signal state  : state_type;
    signal nextstate : state_type;
begin
    process(CLK, RST)
        begin 
            if (RST = '1') then
                state <= fetch;
            elsif (CLK' event and CLK='1') then
                state <= nextstate;
            end if;
    end process;
    
    process(state, OpCode, Funct, DONE_FLAG)
        begin 
            case state is 
                when fetch => 
                    nextstate <= decode;
                when decode =>
                --ADDI=001000, ORI=001101, SLTI=001010. ADDU = 000000, AND = 000000, SUB = 000000, SRA = 000000, SLLV = 000000, SLLL = 000000, LUI = 001111
                    if (OpCode = "001000") or (OpCode = "001101") or (OpCode = "001010") then
                        nextstate <= I_execute;
                    elsif (OpCode = "000000" or OpCode = "011100") then 
                        if (Funct = "001000") then  --Jump Register
                            nextstate <= jump;
                        elsif (Funct = "011001") then
                            nextstate <= Mult_execute;
                        else 
                            nextstate <= R_execute;
                        end if;
                    elsif (Opcode = "000010") then  --Jump
                        nextstate <= jump;
                    elsif (OpCode = "000101") then 
                        nextstate <= Branch_execute;
                    elsif (OpCode = "001111" or OpCode = "101011" or OpCode = "100011" or OpCode = "100001") then 
                        nextstate <= Mem_addr_comp;
--                    elsif (OpCode = "000000" and Funct = "011001") then --MUL., MFHI, MFLO
--                        nextstate <= Mult_execute;
                    end if;
                when Mult_execute =>
                    if (DONE_FLAG = '1') then
                        nextstate <= Mult_done;
                    end if;
                when I_execute =>
                    if (OpCode = "001000") or (OpCode = "001101") or (OpCode = "001010") then
                        nextstate <= I_done;
                     end if;
                when R_execute =>
                    if (OpCode = "000000" or OpCode = "011100") then 
                        nextstate <= R_done;
                    end if;
                when Mem_addr_comp =>
                    if (OpCode = "101011") then --For SW
                        nextstate <= Mem_acc_sw;
                    elsif (OpCode = "100011" or OpCode = "100001" or OpCode = "001111") then --For LUI, LW, LH
                        nextstate <= Mem_acc_lw;
                    end if;
                when Mem_acc_sw=>
                    nextstate <= fetch;
                when Mem_acc_lw =>
                    nextstate <= Mem_read;    
                when Mem_read =>
                    nextstate <= fetch;                
                when jump =>
                    nextstate <= fetch;
                when Branch_execute =>
                    nextstate <= Branch_store;
                when Branch_store =>
                    nextstate <= fetch;
                when R_done =>
                    nextstate <= fetch;
                when I_done =>
                    nextstate <= fetch;
                when Mult_done =>
                    nextstate <= fetch;
                when others =>
                    nextstate <= fetch;
            end case;
     end process;
      
      process(state, OpCode, Funct)
      --set all variables to 0 
    variable PCWriteCond_sig, PCWrite_sig, IorD_sig, MemWrite_sig, IRWrite_sig, ALUsrcA_sig, RegWrite_sig, SLLControl_sig, ALUWrite_sig, MemRegWrite_sig, SL32EN_sig, SL28EN_sig, AWrite_sig, BWrite_sig : std_logic := '0';
    variable MemtoReg_sig :  std_logic_vector(2 downto 0) := "000";
    variable PCSource_sig, ALUsrcB_sig :  std_logic_vector(1 downto 0) := "00";
    variable ALUOp_sig :  std_logic_vector(3 downto 0) := "0000";
    variable MemRead_sig :  std_logic_vector(31 downto 0) := X"00000000";
    variable RegDst_sig, MDREN_sig, SHAMTEN_sig, ZeroEN_sig, CLOEN_sig, HIEN_sig, LOEN_sig, MultEN_sig :  std_logic := '0';
        begin
         PCWriteCond_sig := '0';
         PCWrite_sig := '0';
         IorD_sig := '0';
         MemWrite_sig := '0';
         IRWrite_sig := '0';
         ALUsrcA_sig := '0';
         RegWrite_sig := '0';
         SLLControl_sig :='0';
         ALUWrite_sig := '0';
         MemRegWrite_sig := '0';
         SL32EN_sig := '0';
         SL28EN_sig := '0';
         AWrite_sig := '0';
         BWrite_sig := '0';
         MemtoReg_sig := "000";
         PCSource_sig := "00";
         ALUOp_sig := "0000";
         ALUsrcB_sig := "00";
         MemRead_sig := X"00000000";
         RegDst_sig := '0';
         MDREN_sig := '0';
         SHAMTEN_sig:='0';
         ZeroEN_sig := '0';
         CLOEN_sig := '0';
         HIEN_sig := '0';
         LOEN_sig := '0';
         MultEN_sig := '0';
         
            --reset each variable to 0 at begining of each loop in process
             case state is 
                when fetch=> 
                    IRWrite_sig:='1';
                    ALUsrcA_sig:='0';
                    ALUsrcB_sig := "01";
                    ALUOp_sig :="0101";
                    PCSource_sig :="00";
                    PCWrite_sig :='1';
                    IorD_sig := '0';
                when decode =>
                --ADDI=001000, ORI=001101, SLTI=001010. ADDU = 000000, AND = 000000, SUB = 000000, SRA = 000000, SLLV = 000000, SLLL = 000000, LUI = 001111
                --BNE=000101, J=000010, JR=000000, CLO=011100
                    AWrite_sig:='1';
                    BWrite_sig:='1';
                    MultEN_sig := '1';
                    if (OpCode = "000101") then --BNE 
                        ALUsrcB_sig := "11";
                        ALUsrcA_sig := '0';
                        ALUWrite_sig := '1';
                        ALUOp_sig := "0100";
                    elsif (OpCode = "000010") then --J
                        PCSource_sig := "10";
                    elsif (OpCode = "000000" and Funct = "011001") then
                        MultEN_sig := '1';
                    elsif (OpCode = "000000" and Funct = "010000") then
                        HIEN_sig := '0';
                        RegWrite_sig := '1';
                        RegDst_sig := '1';
                        MemtoReg_sig := "100";
                    elsif (OpCode = "000000" and Funct = "010010") then
                        LOEN_sig := '0';
                        RegWrite_sig := '1';
                        RegDst_sig := '1';
                        MemtoReg_sig := "101";
                    end if;
                when Jump =>
                    if (Funct = "001000") then --JR
                        PCSource_sig := "11"; 
                    end if;
                when Mult_execute =>
                    MultEN_sig := '0';
                when Mem_addr_comp =>
                    ALUSrcB_sig := "10";
                    ALUsrcA_sig := '1';
                    ALUWrite_sig := '1';
                when Mem_acc_sw =>
                    IorD_sig := '1';
                    MDREN_sig := '1';
                when Mem_acc_lw =>
                    IorD_sig := '1';
                    MemWrite_sig := '1';
                when Mem_read =>
                    PCWriteCond_sig := '1';
                    PCWrite_sig := '0';
                    IorD_sig := '1';
                    MDREN_sig := '0';
                    MemWrite_sig := '0';
                    if (OpCode = "100011") then --LW
                        MemtoReg_sig := "001";
                    elsif (OpCode = "001111") then --LUI
                        MemtoReg_sig := "011";
                    elsif (OpCode = "100001") then --LH
                        MemtoReg_sig := "010";
                    end if;
                    --MemtoReg_sig := "01";             
                when Branch_execute =>
                    ALUsrcB_sig := "00";
                    ALUsrcA_sig := '1';
                    ALUOp_sig := "0110";
                when Branch_store =>
                    ALUsrcB_sig := "01";
                    ALUsrcA_sig := '0';
                    PCWriteCond_sig := '1';
                    PCSource_sig := "01";
                    ZeroEN_sig := '1';
                    
                when I_execute =>
                    ALUsrcA_sig:='1';
                    ALUsrcB_sig:="10";
                    ALUWrite_sig:='1';
                    if (OpCode="001000") then  --ADDI
                        ALUOp_sig:="0100";
                    elsif (OpCode="001101") then --ORI
                        ALUOp_sig:="0001";
                    elsif (OpCode = "001010") then  --SLTI
                        ALUOp_sig:="1010";
                    end if;
                when R_execute =>
                    ALUsrcB_sig := "00";
                    ALUsrcA_sig := '1';
                    ALUWrite_sig := '1';
                    if (OpCode = "000000" and Funct = "100001") then --ADDU
                        ALUop_sig := "0101";
                    elsif (Funct = "100100") then  --AND
                        ALUOp_sig := "0000";
                    elsif (Funct = "100010") then --SUB
                        ALUOp_sig := "0110";
                    elsif (Funct = "000011") then --SRA
                        ALUOp_sig := "1111";
                    elsif (Funct = "000100") then --SLLV
                        ALUOp_sig := "1100";
                        SHAMTEN_sig := '1';
                    elsif (Funct = "000000") then --SLL
                        ALUOp_sig := "1100";
                        SHAMTEN_sig := '0';
                    elsif (OpCode = "011100" and Funct = "100001") then --CLO
                        ALUop_sig := "0101";
                        CLOEN_sig := '1';
                    end if;
                when Mult_done =>
                    HIEN_sig := '1';
                    LOEN_sig := '1';
                when I_done =>
                    RegDst_sig:='0';
                    RegWrite_sig:='1';
                    MemtoReg_sig:="000";
                    AWrite_sig := '0';
                    BWrite_sig := '0';
                    ALUWrite_sig := '0';
                when R_done =>
                    RegWrite_sig := '1';
                    RegDst_sig := '1';
                    MemtoReg_sig := "000";
                    AWrite_sig := '0';
                    BWrite_sig := '0';
                    ALUWrite_sig := '0';
                    if (OpCode = "011100" and Funct = "100001") then 
                        CLOEN_sig := '1';
                    end if;        
             end case;
             PCWriteCond <= PCWriteCond_sig;
             PCWrite <= PCWrite_sig;
             IorD <= IorD_sig;
             MemWrite <= MemWrite_sig;
             IRWrite <= IRWrite_sig;
             ALUsrcA <= ALUsrcA_sig;
             RegWrite <= RegWrite_sig;
             RegDst <= RegDst_sig;
             MemtoReg <= MemtoReg_sig;
             PCSource <= PCSource_sig;
             ALUOp <= ALUOp_sig;
             ALUsrcB <= ALUsrcB_sig;
             AWrite<=AWrite_sig;
             BWrite<=BWrite_sig;
             ALUWrite<=ALUWrite_sig;
             MDREN<=MDREN_sig;
             SL32EN<=SL32EN_sig;
             ALUWrite<=ALUWrite_sig;
             SHAMTEN<=SHAMTEN_sig;
             ZeroEN<=ZeroEN_sig;
             CLOEN<=CLOEN_sig;
             HIEN<=HIEN_sig;
             LOEN<=LOEN_sig;
             MultEN<=MultEN_sig;
        end process;
end Behavioral;
