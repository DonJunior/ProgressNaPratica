/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Pr�tica
  Data    : Nov 2016
  Objetivo: Exemplo de importa��o de dados externos
-----------------------------------------------------------------*/

DEFINE TEMP-TABLE tt-import NO-UNDO
    FIELD c-campo AS CHARACTER FORMAT "x(15)"
    FIELD i-campo AS INTEGER   FORMAT 9999.

INPUT FROM VALUE("c:\temp\teste.csv").
    REPEAT:
        CREATE tt-import.
        IMPORT DELIMITER ";" tt-import.
    END.
INPUT CLOSE.

FOR EACH tt-import WHERE i-campo > 0:
    DISPLAY c-campo
            i-campo.
END.