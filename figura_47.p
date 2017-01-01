/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo do comando DO
-----------------------------------------------------------------*/

DEFINE VARIABLE i-num AS INTEGER INITIAL 1.

DO i-num = 1 TO 5 WITH FRAME a:
    DISPLAY i-num WITH FRAME a.
END.