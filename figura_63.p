/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Trabalhando com datas
-----------------------------------------------------------------*/

DEFINE VARIABLE i-dia  AS INTEGER  FORMAT "99"    NO-UNDO.
DEFINE VARIABLE i-mes  AS INTEGER  FORMAT "99"    NO-UNDO. 
DEFINE VARIABLE i-ano  AS INTEGER  FORMAT "9999"  NO-UNDO. 
DEFINE VARIABLE dt-1   AS DATE                    NO-UNDO.
DEFINE VARIABLE dt-2   AS DATETIME                NO-UNDO.
DEFINE VARIABLE dt-3   AS DATE                    NO-UNDO.
DEFINE VARIABLE dt-4   AS DATE                    NO-UNDO.
DEFINE VARIABLE dt-5   AS DATE                    NO-UNDO.
DEFINE VARIABLE dt-6   AS DATE                    NO-UNDO.

ASSIGN dt-1  = TODAY
       dt-2  = DATETIME(dt-1,MTIME)
       dt-3  = dt-1 + 10
       dt-4  = DATE("12/27/2001")
       dt-5  = NOW
       i-dia = DAY(NOW)
       i-mes = MONTH(dt-4)
       i-ano = YEAR(dt-5) + 1
       dt-6  = DATE(i-mes,i-dia,i-ano).

MESSAGE  dt-1  SKIP dt-2  SKIP 
         dt-3  SKIP dt-4  SKIP 
         dt-5  SKIP i-dia SKIP
         i-mes SKIP i-ano SKIP
         dt-6  
    VIEW-AS ALERT-BOX INFO BUTTONS OK.