/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de consulta sem tratamento de erro
-----------------------------------------------------------------*/

FIND customer WHERE customer.cust-num = 0.
    DISPLAY customer.cust-num
            customer.city
            customer.country.