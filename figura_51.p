/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de consulta otimizada no banco de dados
-----------------------------------------------------------------*/

FIND customer WHERE customer.cust-num = 1.
    DISPLAY customer.cust-num
            customer.city
            customer.country.