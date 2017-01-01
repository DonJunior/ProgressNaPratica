/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de Passagem de parâmetros
-----------------------------------------------------------------*/

DEFINE VARIABLE c-ida   AS CHARACTER   NO-UNDO INITIAL "A".
DEFINE VARIABLE c-volta AS CHARACTER   NO-UNDO INITIAL "B".
        
DISPLAY c-ida c-volta WITH FRAME a.

RUN calc (INPUT c-ida,
          OUTPUT c-volta).

DISPLAY c-ida c-volta WITH FRAME b.

PROCEDURE calc:
    DEFINE INPUT  PARAMETER c-ida   AS CHARACTER NO-UNDO.
    DEFINE OUTPUT PARAMETER c-volta AS CHARACTER NO-UNDO.

    IF c-ida = "A" THEN ASSIGN c-volta = "Z".
END.