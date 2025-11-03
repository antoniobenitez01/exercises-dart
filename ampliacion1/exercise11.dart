/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 11
 *    "Write a program that takes a list of numbers and makes a new list of only the first and last elements of the given list. 
 *    For practice, write this code inside a function."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

List<int> firstLast(List<int> list){
  return [list[0],list[list.length-1]];
}

void main(){
  List<int> a = [5, 10, 15, 20, 25];
  print(firstLast(a));
}