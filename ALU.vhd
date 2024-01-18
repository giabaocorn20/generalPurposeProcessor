-- FILEPATH: /c:/Users/giaba/OneDrive/Desktop/BMS_for_TMAV/help.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    port (
        Clk: in std_logic;
        A, B: in unsigned(7 downto 0);
        student_id: in unsigned(3 downto 0);
        OP: in unsigned(15 downto 0);
        Neg: out std_logic;
        R1: out unsigned(3 downto 0);
        R2: out unsigned(3 downto 0)
    );
end ALU;

architecture calculation of ALU is
    signal Reg1, Reg2, Result: unsigned(7 downto 0) := (others => '0');
    signal Neg_temp: std_logic;

begin
    process(Clk, OP)
    begin
        if rising_edge(Clk) then
            Reg1 <= A;
            Reg2 <= B;

            case OP is
                when "0000000000000001" =>
                    -- 1. Replace the odd bits of Reg1 with odd bits of Reg2
                    for i in 0 to 7 loop
                        if i mod 2 = 1 then -- Check if it's an odd bit
                            Result(i) <= Reg2(i);
                        else
                            Result(i) <= Reg1(i);
                        end if;
                    end loop;

                when "0000000000000010" =>
                    -- 2. Produce the result of NANDing Reg1 and Reg2
                    Result <= not (Reg1 and Reg2);

                when "0000000000000100" =>
                    -- 3. Calculate the summation of Reg1 and Reg2 and decrease it by 5
                    Result <= (Reg1 + Reg2) - 5;

                when "0000000000001000" =>
                    -- 4. Produce the 2’s complement of Reg2
                    Result <= not Reg2 + 1;

                when "0000000000010000" =>
                    -- 5. Invert the even bits of Reg2
                    for i in 0 to 7 loop
                        if i mod 2 = 0 then -- Check if it's an even bit
                            Result(i) <= not Reg2(i);
                        else
                            Result(i) <= Reg2(i);
                        end if;
                    end loop;

                when "0000000000100000" =>
                    -- 6. Left shift Reg1 by 2 bits and fill new spaces with '1'
                    Result <= (Reg1 sll 2) or "00000011";

                when "0000000001000000" =>
                    -- 7. Produce null on the output
                    Result <= (others => '0');

                when "0000000010000000" =>
                    -- 8. Produce 2’s complement of Reg1
                    Result <= not Reg1 + 1;

                when "0000000100000000" =>
                    -- 9. Rotate Reg2 to the right by 2 bits (ROR)
                    Result <= rotate_right(Reg2, 2);

                when others =>
                    -- Default case, do nothing
                    Result <= (others => '0');
            end case;
        end if;
    end process;

    Neg_temp <= '0' when Result(7) = '0' else '1';

    Neg <= Neg_temp;

    R1 <= Result(3 downto 0);
    R2 <= Result(7 downto 4);
end calculation;
