/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Pr�tica
  Data    : Nov 2016
  Objetivo: Exemplo de Raiz Quadrada
-----------------------------------------------------------------*/

DEFINE VARIABLE i-raiz AS INTEGER INITIAL 16.

MESSAGE "A Raiz Quadrada de " i-raiz 
        " � " SQRT(i-raiz)
    VIEW-AS ALERT-BOX.