/* 
 * COMMON - Ampliación de Ejercicios 1
 * Librería de métodos en común para la ampliación de ejercicios 1
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import 'dart:io';

// INPUT INT - Verificación de entrada de un número entero
int inputInt(String mensaje){
  bool isNum = false;
  int num = 0;
  while(isNum == false){
    print(mensaje);
    try{
      num = int.parse(stdin.readLineSync()!).abs();
      isNum = true;
    } on FormatException{
      print("Debe introducir un número entero, por favor inténtelo de nuevo.");
    }
  }
  return num;
}

// MENU - Función de menú modular con un mínimo y máximo
int menu(String menu,int min,int max){
  print(menu);
  int respuesta = 0;
  while(respuesta < min || respuesta > max){
    respuesta = inputInt("Introduzca la opción a elegir.");
    if(respuesta < min || respuesta > max){
      print("Respuesta no válida, inténtelo de nuevo.");
    }
  }
  return respuesta;
}