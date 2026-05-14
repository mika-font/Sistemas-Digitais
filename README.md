# Sistemas Digitais

Repositório para organizar materiais da disciplina de Sistemas Digitais, incluindo:

- Projetos de circuitos digitais em `.circ` (Logisim/Logisim-evolution)
- Códigos em `.vhd` (VHDL)
- Testbenches, documentação e arquivos auxiliares

## Objetivo

Centralizar os arquivos da disciplina e organizar os arquivos em aulas.

## Estrutura

Os arquivos são organizados da seguinte forma:

```text
.
|- circuitos/
|  |- combinacionais/
|  |- sequenciais/
|- vhdl/
|  |- modulos/
|  |- testbenches/
|- docs/
|  |- relatorios/
```

## Boas práticas

- Use nomes de arquivo descritivos (ex.: `somador_4bits.vhd`, `contador_mod10.circ`)
- Sempre que possível, salve versões estáveis com commits pequenos e mensagens claras
- Inclua observações importantes em arquivos de documentação dentro de `docs/`

## Tipos de arquivo comuns no repositório

- `.circ`: projetos de circuito
- `.vhd`: código VHDL
- `.md`: anotações e documentação

## Observação

Arquivos temporários e scripts locais (como `.bat`) são ignorados pelo Git por meio do `.gitignore`.
