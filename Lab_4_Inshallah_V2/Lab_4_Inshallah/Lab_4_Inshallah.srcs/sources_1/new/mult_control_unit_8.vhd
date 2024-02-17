library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mult_control_unit_8 is
    Port (
        CLK, RST, product : in std_logic; --clock, reset, and product which enables writing 
        COUNT : in std_logic_vector(4 downto 0); --5 bit vector, which allows for 32 iterations
        NEXTSTATE, PRODUCTWRITE, SHIFTLEFT, SHIFTRIGHT, DONE, MULTIPLIER, MULTIPLICAND : out std_logic --next state outpit, productwrite which enables writing, shift left and right enables, and enables for multiplier and multiplicand
    );end mult_control_unit_8;

architecture Behavioral of mult_control_unit_8 is
    type state_type is (STATE1, STATE2, STATE3);
    signal state, next_state : state_type;
    
begin
    --This FSM controls the reset, and moving to next state
    process(CLK, RST)
        begin 
           if RST = '1' then --is reset is high, we go back to 1st state
                state <= STATE1;  --stay in first state
            elsif (CLK'event AND CLK = '1') then --if we're on the rising egde of clock, we move to next state 
                state <= next_state; --if no reset, we move to next state
            end if;
        end process;
    --This FSM controls moving to next state, multiplication, and done state
    process(COUNT, state)
        begin 
            case state is 
                when STATE1 =>
                    next_state <= STATE2; --when in first state, always wants to go to next state
                when STATE2 =>
                    if count = "11111" then  --signifies that multiplication is done, and can move to next state
                        next_state <= STATE3;
                    else                     --if multiplication isn't done, we stay in the same state  
                        next_state <= STATE2;   
                    end if;
                 when STATE3 =>              --stays in state 3 once reached, this is the done state
                        next_state <= STATE3;
            end case;
    end process;
    --This FSM controls 
    process(state, product)
        variable NEXTSTATE2, PRODUCTWRITE2, SHIFTLEFT2, SHIFTRIGHT2, DONE2, MULTIPLIER2, MULTIPLICAND2 : std_logic := '0';
            begin 
            NEXTSTATE2 := '0'; --next state variable
            PRODUCTWRITE2 := '0'; --enables writing
            SHIFTLEFT2 := '0'; --shift left enable
            SHIFTRIGHT2 := '0'; --shift right enable
            DONE2 := '0'; --done var
            MULTIPLIER2 := '0'; --multiplier en
            MULTIPLICAND2:= '0'; --multiplicand enable
            case state is 
                when STATE1 =>
                    MULTIPLIER2 := '1';  --enable multilier 
                    MULTIPLICAND2 := '1';   --enable multiplicand 
                when STATE2 =>
                    if (product = '1') then
                        PRODUCTWRITE2 := '1'; --enable product write
                    end if;
                    SHIFTLEFT2 := '1'; --enable shift left
                    SHIFTRIGHT2 := '1'; --enable shift right
                    NEXTSTATE2 := '1'; --transition to next state
                when STATE3 =>
                    DONE2 := '1'; --set done to indicate completion
             end case;
             --update all of the variables
                SHIFTLEFT <= SHIFTLEFT2;
                SHIFTRIGHT <= SHIFTRIGHT2;
                NEXTSTATE <= NEXTSTATE2;
                PRODUCTWRITE <= PRODUCTWRITE2;
                DONE <= DONE2;
                MULTIPLIER <= MULTIPLIER2;
                MULTIPLICAND <= MULTIPLICAND2;         
    end process;
end Behavioral;
