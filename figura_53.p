/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de consulta com tratamento de erro
-----------------------------------------------------------------*/

FIND customer WHERE customer.cust-num = 0 NO-LOCK NO-ERROR.
IF AVAILABLE customer THEN
DO:
    DISPLAY customer.cust-num
            customer.city
            customer.country.
END.