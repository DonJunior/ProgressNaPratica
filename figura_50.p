/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Pr�tica
  Data    : Nov 2016
  Objetivo: Exemplo de consulta no banco de dados com filtro
-----------------------------------------------------------------*/

FOR EACH customer WHERE customer.cust-num = 1 NO-LOCK:
    DISPLAY customer.cust-num
            customer.city
            customer.country.
END.