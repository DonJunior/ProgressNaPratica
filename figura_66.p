/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Pr�tica
  Data    : Nov 2016
  Objetivo: Exemplo de exporta��o de dados
-----------------------------------------------------------------*/

OUTPUT TO "c:\temp\customer.csv" NO-CONVERT.
    EXPORT DELIMITER ";"
        "cust-num" "city" "balance".

    FOR EACH customer WHERE customer.cust-num <= 3 NO-LOCK:
        EXPORT DELIMITER ";"
            customer.cust-num customer.city customer.balance.
    END.
OUTPUT CLOSE.