/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de operações matemáticas
-----------------------------------------------------------------*/

DEFINE VARIABLE i-a AS INTEGER FORMAT "999".
DEFINE VARIABLE i-b AS INTEGER FORMAT ">>9".
DEFINE VARIABLE i-c AS INTEGER.
DEFINE VARIABLE i-d AS INTEGER FORMAT ">99".

ASSIGN i-a = 10
       i-b = i-a - 5
       i-c = i-b * 2
       i-d = i-a / i-b.

DISPLAY i-a i-b i-c i-d.