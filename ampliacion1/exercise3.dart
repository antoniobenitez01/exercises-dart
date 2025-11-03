/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 3
 *    "Take a list and write a program that prints out all the elements of the list that are less than 5."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

void main(){
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  a.forEach((num){
    if(num < 5){
      print(num);
    }
  });
}