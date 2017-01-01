/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Programa para Geração de log
-----------------------------------------------------------------*/

/*------------------ Definição de Variáveis ---------------------*/
DEFINE VARIABLE c-arquivo AS CHARACTER FORMAT "x(16)" NO-UNDO.
DEFINE VARIABLE c-inicio  AS CHARACTER FORMAT "x(30)" NO-UNDO.   
DEFINE VARIABLE i-random  AS INTEGER                  NO-UNDO.

/*------------------ Inicialização de Variáveis -----------------*/
ASSIGN c-inicio  = STRING(TODAY,"99-99-9999")
       c-arquivo = SESSION:TEMP-DIRECTORY + "Reg-" + STRING(c-inicio) + ".log"
       i-random  = RANDOM(1,500).

/*---------------- Procedure de Abertura do LOG -----------------*/
PROCEDURE abre-log:
    OUTPUT TO VALUE(c-arquivo) NO-CONVERT APPEND.
        PUT FILL("-",80) FORMAT "x(80)"                         AT 01 SKIP
            "Registro de ocorrencias em:"                       AT 01
            TODAY                                               AT 30
            FILL("-",80) FORMAT "x(80)"                         AT 01 SKIP
            STRING(NOW,"99/99/9999 HH:MM:SS") + 
            " - Iniciando rotina de cálculo..." FORMAT "x(132)" AT 01 SKIP.
    OUTPUT CLOSE.
END PROCEDURE.

/*---------------- Procedure de gravação do LOG -----------------*/
PROCEDURE gera-log:
    DEFINE INPUT PARAMETER c-texto AS CHARACTER NO-UNDO.
    OUTPUT TO VALUE(c-arquivo) NO-CONVERT APPEND.
        PUT STRING(NOW,"99/99/9999 HH:MM:SS") + 
            " - " + c-texto FORMAT "x(132)"     AT 01 SKIP.
    OUTPUT CLOSE.
END PROCEDURE.

/*--------------- Procedure de Fechamento do LOG ----------------*/
PROCEDURE fecha-log:
    OUTPUT TO VALUE(c-arquivo) NO-CONVERT APPEND.
        PUT STRING(NOW,"99/99/9999 HH:MM:SS") + 
            " - Operação finalizada!" FORMAT "x(132)" AT 01 SKIP.
    OUTPUT CLOSE.
END PROCEDURE.

/*------------------------ Bloco de Código ----------------------*/
RUN abre-log. /* Chamada para abertura do log */

IF i-random < 70 THEN
    RUN gera-log ("Lancto No " + STRING(i-random) + "‚ menor que 50 !").

IF i-random > 380 THEN
    RUN gera-log ("Lancto No " + STRING(i-random) + "‚ maior que 100 !").

IF i-random < 350 AND i-random > 200 THEN
    RUN gera-log ("Lancto No " + STRING(i-random) + "‚ entre 200 e 350 !").

RUN fecha-log. /* Chamada para encerramento do log */