/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de Raiz Quadrada
-----------------------------------------------------------------*/

DEFINE VARIABLE i-raiz AS INTEGER INITIAL 16.

MESSAGE "A Raiz Quadrada de " i-raiz 
        " é " SQRT(i-raiz)
    VIEW-AS ALERT-BOX.