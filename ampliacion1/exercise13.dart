/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 13
 *    "Write a program (function) that takes a list and returns a new list that contains all the elements 
 *    of the first list minus all the duplicates."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

List removeDuplicates(List list){
  Set removed = list.toSet();
  return removed.toList();
}

void main(){
  List<int> nums = [1,1,2,2,3,3,4,4,5,5];
  print(removeDuplicates(nums));
}