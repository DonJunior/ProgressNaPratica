/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de exportação de dados
-----------------------------------------------------------------*/

OUTPUT TO "c:\temp\customer.csv" NO-CONVERT.
    EXPORT DELIMITER ";"
        "cust-num" "city" "balance".

    FOR EACH customer WHERE customer.cust-num <= 3 NO-LOCK:
        EXPORT DELIMITER ";"
            customer.cust-num customer.city customer.balance.
    END.
OUTPUT CLOSE.