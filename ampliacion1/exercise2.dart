/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 2
 *    "Ask the user for a number. Depending on whether the number is even or odd, 
 *    print out an appropriate message to the user."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "common.dart";

void main(){
  int num = inputInt("Enter a number.");
  print("The number $num is ${num % 2 == 0 || num == 1 ? 'even' : 'odd'}.");
}