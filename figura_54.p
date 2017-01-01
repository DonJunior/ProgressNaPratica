/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de outras opções do comando FIND
-----------------------------------------------------------------*/

FIND FIRST customer
     WHERE customer.country = "usa" NO-LOCK NO-ERROR.
IF AVAILABLE customer THEN
    DISPLAY customer.cust-num customer.city
        WITH FRAME a.

FIND NEXT customer
     WHERE customer.country = "usa" NO-LOCK NO-ERROR.
IF AVAILABLE customer THEN
    DISPLAY customer.cust-num customer.city
        WITH FRAME b.

FIND LAST customer
     WHERE customer.country = "usa" NO-LOCK NO-ERROR.
IF AVAILABLE customer THEN
    DISPLAY customer.cust-num customer.city
        WITH FRAME c.

FIND PREV customer
     WHERE customer.country = "usa" NO-LOCK NO-ERROR.
IF AVAILABLE customer THEN
    DISPLAY customer.cust-num customer.city
        WITH FRAME d.