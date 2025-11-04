/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 25
 *    "In this exercise, we will finish building Hangman. In the game of Hangman, 
 *    the player only has 6 incorrect guesses (head, body, 2 legs, and 2 arms) before they lose the game."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 04/11/2025
 */

import "dart:io";
import "dart:math";
import 'package:path/path.dart' as p;

void printStick(int attempts){
  switch(attempts){
    case 0:
      print(" ()\n/|\\\n /\\");
      break;
    case 1:
      print(" ()\n/|\\\n /");
      break;
    case 2:
      print(" ()\n/|\\");
      break;
    case 3:
      print(" ()\n/|");
      break;
    case 4:
      print(" ()\n/");
      break;
    case 5:
      print(" ()");
      break;
  }
}

void main(){
  File file = File(p.join(Directory.current.path,"bin","sowpods.txt"));
  List<String> words = file.readAsLinesSync();
  String chosenWord = words[Random().nextInt(words.length)];
  print("DEBUG: $chosenWord");

  List<String> clue = [];
  for(int i=0;i<chosenWord.length;i++){
    clue.add("_");
  }

  int attempts = 7;
  int toGuess = 1;
  while(toGuess > 0 && attempts > 0){
    toGuess = 0;
    for(int i=0;i<clue.length;i++){
      stdout.write("${clue[i]} ");
      if(clue[i] == "_"){
        toGuess++;
      }
    }
    print("");
    print("Attempts left = ${attempts - 1}");
    attempts--;
    printStick(attempts);

    if(toGuess == 0){
      print("CONGRATULATIONS ! YOU WIN THE HANGMAN !");
    }else if(attempts == 0){
      print("YOU LOSE! TOO BAD!");
    }else{
      bool inputed = false;
      while(inputed == false){
        print("Enter a letter to guess");
        String input = stdin.readLineSync()!.toUpperCase();
        if(input.length > 1 || input.isEmpty){
          print("Invalid input, input a single letter only.");
        }else{
          inputed = true;
          for(int i=0;i<chosenWord.length;i++){
            if(input == chosenWord[i]){
              clue[i] = input;
            }
          }
        }
      }
    }
  }
}
