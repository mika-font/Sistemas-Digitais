------------------------------------------------------------------------------------------
-- Componente: Full Adder
-- Descrição: Somador completo parametrizável
-- Autor: Mikael Fontoura
-- Data: 2026-06-16
------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is 
    generic (
        N : integer := 4  -- Número de bits
    );
    port (
        A : in  STD_LOGIC_VECTOR(N-1 downto 0);     -- Operando A
        B : in  STD_LOGIC_VECTOR(N-1 downto 0);     -- Operando B
        Cin : in  STD_LOGIC;                        -- Carry-in
        Sum : out STD_LOGIC_VECTOR(N-1 downto 0);   -- Resultado da soma
        Cout : out STD_LOGIC                        -- Carry-out
    );
end FullAdder;

architecture Behavioral of FullAdder is
    signal C : STD_LOGIC_VECTOR(N-1 downto 0);
begin
    C(0) <= Cin;

    gen_sum: for i in 0 to N-1 generate
        Sum(i) <= A(i) XOR B(i) XOR C(i);
        if i < N-1 then
            C(i+1) <= (A(i) AND B(i)) OR (C(i) AND (A(i) XOR B(i)));
        end if;
    end generate;

    Cout <= C(N);

end Behavioral;