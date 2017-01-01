/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo do comando FIND LAST com WHERE
-----------------------------------------------------------------*/

FOR EACH customer NO-LOCK:
    FIND LAST invoice WHERE invoice.cust-num = customer.cust-num NO-ERROR.
    IF AVAILABLE invoice THEN
    DO:
        DISPLAY customer.cust-num
                customer.city
                invoice.amount
                invoice.total-paid
                invoice.order-num.
    END.
END.