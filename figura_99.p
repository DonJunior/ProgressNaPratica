/*-----------------------------------------------------------------
  Autor   : Don de C. S. Junior
  Livro   : Progress na Pr�tica
  Data    : Nov 2016
  Objetivo: Conex�o com banco de dados OE4GL no c�digo
-----------------------------------------------------------------*/

/* Conex�o atrav�s arquivo de par�metros (.pf) */
CONNECT -pf C:\Sports\scripts\oe4gl.pf.

/* Conex�o direta no fonte */
CONNECT -db C:\Sports\sports.db -1.

/*
DISCONNECT oe4gl.
DISCONNECT sports.
*/