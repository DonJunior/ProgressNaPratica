/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo do comando DO WHILE
-----------------------------------------------------------------*/

DEFINE VARIABLE i-num AS INTEGER INITIAL 1.

DO WHILE i-num < 5 WITH FRAME a:

    DISPLAY i-num WITH FRAME a.

    ASSIGN i-num = i-num + 1.
END.