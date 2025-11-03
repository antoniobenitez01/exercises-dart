/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 10
 *    "Ask the user for a number and determine whether the number is prime or not."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "common.dart";

bool isPrime(int num){
  bool resultado = true;
  if (num <= 1) {
    resultado = false;
  }
  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      resultado = false;
    }
  }
  return resultado;
}

void main(){
  int num = inputInt("Enter a number.");
  if(isPrime(num)){
    print("The number $num is prime.");
  }else{
    print("The number $num is not prime.");
  }
}