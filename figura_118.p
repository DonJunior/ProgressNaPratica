/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de BEGINS
-----------------------------------------------------------------*/

FOR EACH customer WHERE customer.address BEGINS "AL" NO-LOCK:
    DISPLAY customer.address
	        customer.city.
END.