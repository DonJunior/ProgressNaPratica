/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Prática
  Data    : Nov 2016
  Objetivo: Conexão com banco de dados OE4GL no código
-----------------------------------------------------------------*/

/* Conexão através arquivo de parâmetros (.pf) */
CONNECT -pf C:\Sports\scripts\oe4gl.pf.

/* Conexão direta no fonte */
CONNECT -db C:\Sports\sports.db -1.

/*
DISCONNECT oe4gl.
DISCONNECT sports.
*/