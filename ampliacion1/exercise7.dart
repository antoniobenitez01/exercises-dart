/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 7
 *    "Write a Dart code that takes a list and makes a new list that has only the even elements of the list in it."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

void main(){
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> evens = [];
  a.forEach((number){
    if(number%2==0 || number == 1){
      evens.add(number);
    }
  });
  print(evens);
}