/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 6
 *    "Ask the user for a string and print out whether this string is a palindrome or not."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "dart:io";

bool esPalindromo(String str){
  bool esPalindromo = false;
  String strNoSpace = str.replaceAll(" ","").toLowerCase();
  String half;
  int length = strNoSpace.length;
  if(length%2 == 0){
    half = strNoSpace.substring((length/2).floor(),length);
  }else{
    half = strNoSpace.substring((length/2).floor()+1,length);
  }
  if(strNoSpace.substring(0,(length/2).floor()) == half.split('').reversed.join()){
    esPalindromo = true;
  }
  return esPalindromo;
}

void main(){
  print("Enter a string.");
  String inputString = stdin.readLineSync()!;
  if(esPalindromo(inputString)){
    print("The string introduced is a palindrome.");
  }else{
    print("The string introduced is not a palindrome.");
  }
}