/* 
 * AMPLIACIÓN DE EJERCICIOS 1: Exercise 15
 *    "Write a password generator in Dart. Be creative with how you generate passwords - 
 *    strong passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols. 
 *    The passwords should be random, generating a new password every time the user asks for a new password. 
 *    Include your run-time code in a main method."
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 03/11/2025
 */

import "dart:math";

String genPass(){
  String pass = "";
  String validChar = "qwertyuiopasdfghjklñzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM?¿!¡.:,;-_*\$%&/=#@'+";
  for(int i=0;i<30;i++){
    String ascii = String.fromCharCode(Random().nextInt(127)+1);
    for(int i=0;i<validChar.length;i++){
      if(ascii == validChar[i]){
        pass += (ascii);
      }
    }
  }
  return pass;
}
void main(){
  List<String> passwords = [];
  for(int i=0;i<5;i++){
    passwords.add(genPass());
  }
  passwords.forEach((pass){
    print("PASSWORD: " + pass);
  });
}