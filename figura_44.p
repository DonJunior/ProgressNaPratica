/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Pr�tica
  Data    : Nov 2016
  Objetivo: Exemplo de atribui��o e compara��o
-----------------------------------------------------------------*/

DEFINE VARIABLE i AS INTEGER.
DEFINE VARIABLE a AS INTEGER.

ASSIGN i = 5
       a = IF(i = 5) THEN 10 ELSE i.
DISPLAY i a.