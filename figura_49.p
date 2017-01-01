/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de consulta no banco de dados
-----------------------------------------------------------------*/

FOR EACH customer NO-LOCK:
    DISPLAY customer.cust-num
            customer.city
            customer.country.
END.