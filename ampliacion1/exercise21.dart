/*
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 21
 *    "You, the user, will have in your head a number between 0 and 100. 
 *    The program will guess a number, and you, the user, will say whether it is too high, too low, or your number."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 04/11/2025
 */

import "dart:math";
import "common.dart";

void main(){
  int max = 100;
  int min = 0;
  int opcion = 0;
  while(opcion != 3){
    int randNum = Random().nextInt(max-min) + min;
    print("I'm guessing your number is $randNum!");
    opcion = menu("1. Too high\n2. Too low\n3. That's it!",1,3);
    switch(opcion){
      case 1:
        max = randNum;
        break;
      case 2:
        min = randNum;
        break;
      case 3:
        print("I guessed your number!");
        break;
    }
  }
}