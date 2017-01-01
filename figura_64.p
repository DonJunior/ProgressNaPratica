/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Operações com datas
-----------------------------------------------------------------*/

DEFINE VARIABLE dt-1   AS DATE   NO-UNDO.
DEFINE VARIABLE dt-2   AS DATE   NO-UNDO.
DEFINE VARIABLE dt-3   AS DATE   NO-UNDO.
DEFINE VARIABLE dt-4   AS DATE   NO-UNDO.

ASSIGN dt-1  = TODAY
       dt-2  = dt-1 + 40
       dt-3  = dt-1 + 365
       dt-4  = dt-2 - 1.

DISPLAY dt-1 dt-2 dt-3 dt-4.