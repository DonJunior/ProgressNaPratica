/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo Utilização DECODE
-----------------------------------------------------------------*/

DEFINE VARIABLE c-txt AS CHARACTER NO-UNDO.

ASSIGN c-txt = ENCODE("123abc").

IF c-txt = ENCODE("123abc") THEN
DO:
    MESSAGE c-txt            SKIP
            ENCODE("123ABC") SKIP
            ENCODE("123abc")
        VIEW-AS ALERT-BOX INFO BUTTONS OK.
END.