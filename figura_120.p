/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Pr�tica
  Data    : Nov 2016
  Objetivo: Exemplo de FOR EACH Encadeado
-----------------------------------------------------------------*/

FOR EACH customer WHERE customer.address MATCHES("*MARK*") NO-LOCK,
    EACH salesrep OF customer NO-LOCK:	
    DISPLAY customer.address
	        salesrep.region.
END.