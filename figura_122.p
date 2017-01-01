/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de utilização do ASSIGN
-----------------------------------------------------------------*/

DEFINE VARIABLE c-txt1 AS CHARACTER NO-UNDO.
DEFINE VARIABLE c-txt2 AS CHARACTER NO-UNDO.
DEFINE VARIABLE c-txt3 AS CHARACTER NO-UNDO.
DEFINE VARIABLE c-txt4 AS CHARACTER NO-UNDO.

IF 1 > 2 THEN ASSIGN c-txt1 = "A"
                     c-txt2 = "B".
           
IF 1 > 2 THEN c-txt3 = "B".
              c-txt4 = "C".

MESSAGE "c-txt1 = " c-txt1  SKIP
        "c-txt2 = " c-txt2  SKIP
        "c-txt3 = " c-txt3  SKIP
        "c-txt4 = " c-txt4
    VIEW-AS ALERT-BOX BUTTONS OK.