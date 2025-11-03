/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 1
 *    "Create a program that asks the user to enter their name and their age. 
 *    Print out a message that tells how many years they have to be 100 years old."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "dart:io";
import "common.dart";

void main(){
  print("Enter your name.");
  String name = stdin.readLineSync()!;
  int age = inputInt("Enter your age.");
  int yearsTo;
  if(age > 100){
    yearsTo = age - 100;
  }else{
    yearsTo = 100 - age;
  }
  print("You have $yearsTo years to 100 years, $name");
  }