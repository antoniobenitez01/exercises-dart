/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 14
 *    "Write a program (using functions!) that asks the user for a long string containing multiple words. 
 *    Print back to the user the same string, except with the words in backwards order."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "dart:io";

String reversePalabras(String str){
  List<String> palabras = str.split(" ").reversed.toList();
  String reversed = "";
  palabras.forEach((palabra){
    reversed += palabra + " ";
  });
  return reversed;
}

void main(){
  print("Input a string.");
  String input = stdin.readLineSync()!;
  print(reversePalabras(input));
}