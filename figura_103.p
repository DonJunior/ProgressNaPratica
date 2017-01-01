/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Exemplo de Arrey (EXTENT)
-----------------------------------------------------------------*/

DEFINE VARIABLE c-dia AS CHARACTER EXTENT 7
    INITIAL["Domingo","Segunda","Terca",
            "Quarta","Quinta","Sexta","Sabado"].

DISPLAY TODAY LABEL "Data"
        c-dia[WEEKDAY(TODAY)] LABEL "Dia".