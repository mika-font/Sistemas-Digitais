-----------------------------------------------------------------------
-- Testbench: Full Adder
-- Descrição: Testbench para o somador completo parametrizável
-- Autor: Mikael Fontoura
-- Data: 2026-06-16
------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder_tb is
end FullAdder_tb;

architecture Behavioral of FullAdder_tb is
    constant N : integer := 4;  -- Número de bits para o teste
    signal A : STD_LOGIC_VECTOR(N-1 downto 0);
    signal B : STD_LOGIC_VECTOR(N-1 downto 0);
    signal Cin : STD_LOGIC;
    signal Sum : STD_LOGIC_VECTOR(N-1 downto 0);
    signal Cout : STD_LOGIC;

begin
    -- Instância do Full Adder
    Somador: entity work.FullAdder
        generic map (
            N => N
        )
        port map (
            A     => A,
            B     => B,
            Cin   => Cin,
            Sum   => Sum,
            Cout  => Cout
        );

    -- Estímulos de teste
    A <= "0000" after 10 ns, "0010" after 15 ns, "0101" after 20 ns, "1111" after 25 ns; 
    B <= "0000" after 10 ns, "0001" after 15 ns, "1010" after 20 ns, "1111" after 25 ns;
    Cin <= '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns;

end Behavioral;