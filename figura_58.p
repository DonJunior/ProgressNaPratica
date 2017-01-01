/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de TEMP-TABLE
-----------------------------------------------------------------*/

DEFINE TEMP-TABLE tt-customer NO-UNDO
    FIELD c-city   AS CHARACTER FORMAT "x(15)"
    FIELD d-amount AS DECIMAL   FORMAT ">>>,>>9.99"
    FIELD d-comis  AS DECIMAL   FORMAT ">>>,>>9.99"
    FIELD i-perc   AS INTEGER   FORMAT ">>9.99".

FOR EACH customer NO-LOCK WHERE customer.cust-num <= 2:
    FIND LAST invoice OF customer NO-ERROR.
    IF AVAILABLE invoice THEN
    DO:
        CREATE tt-customer.
        UPDATE tt-customer.c-city   = customer.city  
               tt-customer.d-amount = invoice.amount
               tt-customer.i-perc   = IF invoice.amount > 2700 THEN 5 ELSE 2
               tt-customer.d-comis  = (invoice.amount * tt-customer.i-perc) / 100.
    END.
END.

FOR EACH tt-customer:
    DISPLAY tt-customer.c-city               LABEL "Cidade"
            tt-customer.d-amount             LABEL "Valor"
            STRING(tt-customer.i-perc) + "%" LABEL "Percentual"
            tt-customer.d-comis              LABEL "Comissão".
END.