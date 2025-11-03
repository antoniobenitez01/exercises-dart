/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 4
 *    "Create a program that asks the user for a number and then prints out a list of all the divisors of that number."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "common.dart";

void main(){
  int num = inputInt("Enter a number.");
  for(int i=1;i<num;i++){
    if(num%i == 0){
      print(i);
    }
  }
}