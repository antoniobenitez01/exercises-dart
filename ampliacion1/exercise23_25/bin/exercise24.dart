/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 24
 *    "Write the logic that asks a player to guess a letter and displays letters in the clue word that were guessed correctly. 
 *    For now, let the player guess an infinite number of times until they get the entire word."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 04/11/2025
 */

import "dart:io";
import "dart:math";
import 'package:path/path.dart' as p;

void main(){
  File file = File(p.join(Directory.current.path,"bin","sowpods.txt"));
  List<String> words = file.readAsLinesSync();
  String chosenWord = words[Random().nextInt(words.length)];
  print("DEBUG: $chosenWord");
  List<String> clue = [];
  for(int i=0;i<chosenWord.length;i++){
    clue.add("_");
  }
  int toGuess = 1;
  while(toGuess > 0){
    toGuess = 0;
    for(int i=0;i<clue.length;i++){
      stdout.write("${clue[i]} ");
      if(clue[i] == "_"){
        toGuess++;
      }
    }
    print("");

    if(toGuess == 0){
      print("CONGRATULATIONS ! YOU WIN THE HANGMAN !");
    }else{
      bool inputed = false;
      while(inputed == false){
        print("Enter a letter to guess");
        String input = stdin.readLineSync()!;
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
