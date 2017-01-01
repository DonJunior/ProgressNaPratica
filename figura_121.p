/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de FOR EACH Dentro de FOR EACH
-----------------------------------------------------------------*/

FOR EACH customer WHERE customer.address MATCHES("*MARK*") NO-LOCK:
    FOR EACH salesrep OF customer NO-LOCK:	
        DISPLAY customer.address
	         salesrep.region.
    END.
END.