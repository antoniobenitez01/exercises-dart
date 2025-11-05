/*
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 26
 *    "Create a dictionary (in your file) of names and birthdays. 
 *    When you run your program it should ask the user to enter a name, 
 *    and return the birthday of that person back to them."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 04/11/2025
 */

import "dart:io";

extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

Map<String,DateTime> birthdays = {
  "einstein":DateTime.parse("1879-03-14"),
  "marie":DateTime.parse("1867-11-07"),
  "isaac":DateTime.parse("1643-01-04"),
  "stephen":DateTime.parse("1942-01-08")
};

void main(){
  bool chosen = false;
  while(chosen == false){
    print("- List of Names -");
    birthdays.forEach((name,bday){
      print('- ${name.capitalize()}');
    });
    print("Who's birhtday would you like to look up?");
    String input = stdin.readLineSync()!.toLowerCase();
    if(birthdays.containsKey(input)){
      print("Name: $input - Birthday: ${birthdays[input]}");
    }else{
      print("That name is not registered in the database. Try again.");
    }
  }
}
