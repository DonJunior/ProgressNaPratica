/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de MATCHES
-----------------------------------------------------------------*/

FIND FIRST customer 
     WHERE customer.address MATCHES "....MA*".
   DISPLAY customer.address customer.city
      WITH FRAME A.

FIND FIRST customer
     WHERE customer.address MATCHES "*MARK*".
   DISPLAY customer.address customer.city
      WITH FRAME B.