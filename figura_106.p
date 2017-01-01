/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de Casas Decimais
-----------------------------------------------------------------*/

DEFINE VARIABLE d-valor AS DECIMAL INITIAL 9.87654.

MESSAGE d-valor           SKIP
        ROUND(d-valor,2)  SKIP
        TRUNCATE(d-valor,2)
    VIEW-AS ALERT-BOX.