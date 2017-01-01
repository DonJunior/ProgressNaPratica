/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de programa com interação do usuário
-----------------------------------------------------------------*/

FORM customer.cust-num  AT ROW 1 COLUMN 10 COLON-ALIGNED 
     customer.address   AT ROW 2 COLUMN 10 COLON-ALIGNED
    WITH FRAME f-customer TITLE "Atualização" SIDE-LABELS.

REPEAT:
    PROMPT-FOR customer.cust-num
        WITH FRAME f-customer.

    FIND customer USING INPUT FRAME f-customer customer.cust-num.
    UPDATE customer.address
        WITH FRAME f-customer.
END.