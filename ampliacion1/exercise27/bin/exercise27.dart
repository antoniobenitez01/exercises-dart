/*
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 27
 *    "In this exercise, modify your program from Part 1 to load the birthday dictionary from a JSON file on disk, 
 *    rather than having the dictionary defined in the program."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 04/11/2025
 */

import "dart:io";
import 'package:path/path.dart' as p;

void main(){
  String path = p.join(Directory.current.path,"bin","sowpods.txt");
  File file = File(path);
  print(file.path);
}