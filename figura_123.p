/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de utilização do DO/END
-----------------------------------------------------------------*/

DEFINE VARIABLE c-txt1 AS CHARACTER NO-UNDO.
DEFINE VARIABLE c-txt2 AS CHARACTER NO-UNDO.
DEFINE VARIABLE c-txt3 AS CHARACTER NO-UNDO.
DEFINE VARIABLE c-txt4 AS CHARACTER NO-UNDO.

IF 1 < 2 THEN
DO: 
    c-txt1 = "A".
    c-txt2 = "B".
    DISPLAY c-txt1 c-txt2 WITH FRAME A.
END.
           
IF 1 > 2 THEN 
    c-txt3 = "C".
    c-txt4 = "D".
    DISPLAY c-txt3 c-txt4 WITH FRAME B.