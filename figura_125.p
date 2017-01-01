/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de QUERY
-----------------------------------------------------------------*/

DEFINE QUERY q-cust FOR customer SCROLLING.
    
OPEN QUERY q-cust FOR EACH customer.

REPEAT WHILE NOT QUERY-OFF-END("q-cust"):
    GET NEXT q-cust.
END.

MESSAGE NUM-RESULTS("q-cust")
    VIEW-AS ALERT-BOX INFO BUTTONS OK.