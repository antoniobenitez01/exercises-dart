/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 12
 *    "Write a program that asks the user how many Fibonnaci numbers to generate and then generates them. 
 *    Take this opportunity to think about how you can use functions."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "common.dart";

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

List<int> fiboList(int n){
  List<int> lista = [];
  for(int i=0;i<n;i++){
    lista.add(fibonacci(i));
  }
  return lista;
}

void main(){
  int num = inputInt("Input how many Fibonnaci numbers shall we generate.");
  print(fiboList(num));
}