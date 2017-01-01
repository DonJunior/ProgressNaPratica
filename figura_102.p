/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Fonte de Conexão com banco OE4GL
-----------------------------------------------------------------*/

CONNECT -pf C:\Sports\scripts\oe4gl.pf NO-ERROR.
IF CONNECTED ("oe4gl") THEN
DO:
    RUN MeuFonte.w.
    DISCONNECT oe4gl NO-ERROR.
END.
ELSE
DO:
    MESSAGE "Não foi possível conectar ao banco OE4GL" SKIP
            "O Programa MeuFonte.w não será executado!"
        VIEW-AS ALERT-BOX WARNING BUTTONS OK.
END.