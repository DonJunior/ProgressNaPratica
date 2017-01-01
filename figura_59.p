/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de FORM com FRAME
-----------------------------------------------------------------*/

FORM customer.cust-num  AT 01 FORMAT ">>>>9" LABEL "Código"
     customer.city      AT 10 FORMAT "x(15)" LABEL "Cidade"
     customer.phone     AT 27 FORMAT "x(15)" LABEL "Tel."
    WITH FRAME f-cabec WIDTH 80 DOWN STREAM-IO.

FOR EACH customer NO-LOCK:

    DISPLAY customer.cust-num
            customer.city
            customer.phone
        WITH FRAME f-cabec.

    DOWN WITH FRAME f-cabec.
END.