/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de BUFFER
-----------------------------------------------------------------*/

DEFINE BUFFER bf-salesrep FOR salesrep.

FIND FIRST salesrep WHERE salesrep.month-quota[1] > 1000 NO-LOCK NO-ERROR.
IF AVAILABLE salesrep THEN
    DISPLAY salesrep.rep-name salesrep.sales-rep
            salesrep.region salesrep.month-quota[1]
        WITH FRAME a.

FIND LAST bf-salesrep WHERE bf-salesrep.sales-rep > salesrep.sales-rep NO-LOCK NO-ERROR.
IF AVAILABLE bf-salesrep THEN
    DISPLAY bf-salesrep.rep-name bf-salesrep.sales-rep
            bf-salesrep.region bf-salesrep.month-quota[1]
        WITH FRAME b.