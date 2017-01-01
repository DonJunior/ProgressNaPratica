/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de controle de transação com erro
-----------------------------------------------------------------*/

DO TRANSACTION ON ERROR UNDO, RETURN NO-APPLY:
    FIND FIRST cidade NO-LOCK NO-ERROR.
    IF AVAILABLE cidade THEN
    DO:
        DISPLAY cidade.sigla LABEL "Antes" 
             WITH FRAME a.
        UPDATE cidade.sigla = "RJ" NO-ERROR.
    END.
END.

FIND FIRST cidade NO-LOCK NO-ERROR.
IF AVAILABLE cidade THEN
    DISPLAY cidade.sigla LABEL "Depois" 
        WITH FRAME b.