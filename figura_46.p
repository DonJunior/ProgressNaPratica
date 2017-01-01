/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de conversões
-----------------------------------------------------------------*/

DEFINE VARIABLE i-a AS INTEGER.
DEFINE VARIABLE i-b AS INTEGER.
DEFINE VARIABLE c-b AS CHARACTER FORMAT "x(15)".
DEFINE VARIABLE c-c AS CHARACTER.

ASSIGN i-a = 10
       c-b = STRING(i-a) + " é maior que " + STRING((i-a / 2))
       i-b = INTEGER(SUBSTRING(c-b,1,2)) - 3
       c-c = REPLACE(c-b,"10","09").

MESSAGE i-a SKIP c-b SKIP i-b SKIP c-c
    VIEW-AS ALERT-BOX INFO BUTTONS OK.