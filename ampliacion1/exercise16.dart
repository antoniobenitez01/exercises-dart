/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 16
 *    "Create a program that will play the “cows and bulls” game with the user. The game works like this:
 *        - Randomly generate a 4-digit number. Ask the user to guess a 4-digit number. 
 *          For every digit the user guessed correctly in the correct place, they have a “cow”. 
 *          For every digit the user guessed correctly in the wrong place is a “bull.”
 * 
 *        - Every time the user makes a guess, tell them how many “cows” and “bulls” they have. 
 *          Once the user guesses the correct number, the game is over. Keep track of the number of guesses the user makes 
 *          throughout the game and tell the user at the end."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "dart:math";
import "dart:io";

void main(){
  String randNumber = (1000 + Random().nextInt(9999 - 1000)).toString();
  print("DEBUG: $randNumber");

  int cows = 0;
  int bulls = 0;
  bool guessed = false;

  while(guessed == false){
    print("Please input a number or type 'Exit' to stop.");
    String input = stdin.readLineSync()!;
    if(input.toLowerCase() == "exit"){
      print("Exiting game ...");
      guessed = true;
    }else if(input.length != 4){
      print("Invalid input, please input a 4 digit number.");
    }else if(input == randNumber){
      print("Bullseye! You guessed the number!");
      guessed = true;
    }else{
      for(int i=0;i<randNumber.length;i++){
        if(input[i] == randNumber[i]){
          cows++;
        }else if(randNumber.contains(input[i])){
          bulls++;
        }
      }
      print("Cows: $cows Bulls: $bulls");
    }
  }
}