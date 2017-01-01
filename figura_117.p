/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de CAN-DO
-----------------------------------------------------------------*/

DEFINE VARIABLE c-txt1 AS CHARACTER NO-UNDO INITIAL "BRA,CHN,JPN,POL".
DEFINE VARIABLE c-txt2 AS CHARACTER NO-UNDO.
DEFINE VARIABLE l-txt3 AS LOGICAL NO-UNDO.

IF CAN-DO(c-txt1, "jpn") THEN c-txt2 = "Japão".
ELSE c-txt2 = "Brasil".

l-txt3 = CAN-DO(c-txt1, "CHN").
	
MESSAGE c-txt1    SKIP
        c-txt2    SKIP
        l-txt3
    VIEW-AS ALERT-BOX BUTTONS OK.