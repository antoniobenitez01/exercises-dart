/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 23
 *    "In this exercise, the task is to write a function that picks a random word from a list of words from the SOWPODS dictionary."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "dart:io";
import "dart:math";
import 'package:path/path.dart' as p;

void main(){
  String path = p.join(Directory.current.path,"bin","sowpods.txt");
  File file = File(path);
  print(file.path);
  List<String> words = file.readAsLinesSync();
  print(words[Random().nextInt(words.length)]);
}
