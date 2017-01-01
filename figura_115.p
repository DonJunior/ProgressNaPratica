/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de CAN-FIND
-----------------------------------------------------------------*/

IF CAN-FIND(customer WHERE customer.cust-num = 5) THEN
DO:
    MESSAGE "Achei"
        VIEW-AS ALERT-BOX BUTTONS OK.
END.