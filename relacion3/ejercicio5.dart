/*
 * RELACIÓN DE EJERCICIOS 3: EJERCICIO 5
 * Versión inversa del Ejercicio 4 donde utilizamos
 * 'parse()' para recoger el valor 
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 23/10/2025
 */

import 'dart:convert';

void main(){
  int num = int.parse("5");
  print("Parse INT\t$num");

  double numDouble = double.parse("50.54");
  print("Parse DOUBLE\t$numDouble");

  bool booleano = bool.parse("true");
  print("Parse BOOL\t$booleano");

  String listaStr = "1,2,3,4,5";
  List lista = listaStr.split(",").map(int.parse).toList();
  print("Parse LIST\t$lista");

  String mapaString = '{"Primero":"1","Segundo":"2","Tercero":"3"}';
  Map<String,dynamic> mapa = jsonDecode(mapaString);
  print("Parse MAPA\t$mapa");

  /* No es posible parsear un Enumerado a partir de un String,
     pues el tipo enumerado debe declararse e inicializarse antes del método main()*/

  String setString = "1,2,3,4,5";
  Set numSet = setString.split(",").map(int.parse).toSet();
  print("Parse SET\t$numSet");
}