/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 9
 *    "Generate a random number between 1 and 100. Ask the user to guess the number, 
 *    then tell them whether they guessed too low, too high, or exactly right."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "dart:math";
import "common.dart";

void main(){
  int randNumber = Random().nextInt(99)+1;
  print("DEBUG = $randNumber");
  bool guessed = false;
  while(guessed == false){
    int num = inputInt("Input a number.");
    if(num == randNumber){
      guessed = true;
    }else if(num > randNumber){
      print("You guessed too high! Try again!");
    }else{
      print("You guessed too low! Try again!");
    }
  }
  print("Well done! You guessed exactly right!");
}