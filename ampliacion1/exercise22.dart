/*
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 22
 *    "Implement a function that takes as input three variables, and returns the largest of the three. 
 *    Do this without using the Dart max() function!"
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 04/11/2025
 */

void main(){
  int num1 = 5, num2 = 10, num3 = 2;
  List<int> numeros = [num1,num2,num3];
  numeros.sort();
  print(numeros.reversed.toList()[0]);
}