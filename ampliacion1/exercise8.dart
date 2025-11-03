/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 8
 *    "Make a two-player Rock-Paper-Scissors game against computer."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "dart:math";
import "dart:io";

void main(){

  List<String> rps = ["rock","paper","scissors"];
  int randNumber = Random().nextInt(3);
  String cpuChoice = rps[randNumber];
  print(cpuChoice);

  print("Rock Paper Scissors! Make your move and type 'rock', 'paper' or 'scissors'!");
  bool chosen = false;
  String inputString = "";
  while(chosen == false){
    inputString = stdin.readLineSync()!.toLowerCase();
    if(rps.contains(inputString)){
      chosen = true;
    }else{
      print("Invalid Input. Please type a valid option.");
    }
  }

  Map<String,String> rules = {
    "rock":"scissors",
    "scissors":"paper",
    "paper":"rock"
  };

  if(cpuChoice == inputString){
    print("It's a tie!");
  }else if(rules[cpuChoice] == inputString){
    print("Computer wins!");
  }else if(rules[inputString] == cpuChoice){
    print("You win! Congratulations!");
  }
}