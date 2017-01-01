/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de atribuição e comparação
-----------------------------------------------------------------*/

DEFINE VARIABLE i AS INTEGER.
DEFINE VARIABLE a AS INTEGER.

ASSIGN i = 5
       a = IF(i = 5) THEN 10 ELSE i.
DISPLAY i a.