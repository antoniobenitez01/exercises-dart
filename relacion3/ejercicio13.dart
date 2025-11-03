/* 
 * RELACIÓN DE EJERCICIOS 3: EJERCICIO 13
 * Programa que muestra un menú de opciones para
 * trabajar sobre una lista de String
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 24/10/2025
 */

import "dart:io";
import "./common.dart";

void main(){
  List<String> colores = ["rojo","verde","azul"]; // Declaración e inicialización inicial de List de Colores (String)
  String colorTeclado = "";
  int opcion = 0;
  while(opcion != 5){
    opcion = menu("\n=== MENÚ DE OPERACIONES LIST ==="+
    "\n1. Incluir color\n2. Eliminar color\n3. Buscar color\n4. Mostrar lista de colores\n5. Salir del programa",1,5);
    switch(opcion){
      case 1: // --------------------------------------------------------------------- INCLUIR COLOR
        print("Introduzca el color a añadir.");
        colorTeclado = stdin.readLineSync()!.toLowerCase();
        if(colores.contains(colorTeclado)){
          print("El color introducido ya está en la lista.");
        }else{
          colores.add(colorTeclado);
          print("LISTA DE COLORES = $colores");
        }
        break;
      case 2: // --------------------------------------------------------------------- ELIMINAR COLOR
        if(colores.isEmpty){
          print("La lista de colores está vacía.");
        }else{
          print(colores);
          print("Introduzca el color que desea borrar.");
          colorTeclado = stdin.readLineSync()!.toLowerCase();
          if(colores.contains(colorTeclado)){
            colores.remove(colorTeclado);
            print("LISTA DE COLORES = $colores");
          }else{
            print("El color introducido no se encuentra en la lista.");
          }
        }
        break;
      case 3: // --------------------------------------------------------------------- BUSCAR COLOR
        if(colores.isEmpty){
          print("La lista de colores está vacía.");
        }else{
          print("Introduzca el color a buscar.");
          colorTeclado = stdin.readLineSync()!.toLowerCase();
          if(colores.contains(colorTeclado)){
            print("El color introducido está en la lista.");
          }else{
            print("El color introducido no está en la lista.");
          }
        }
        break;
      case 4: // --------------------------------------------------------------------- MOSTRAR LISTA DE COLOREs
        if(colores.isEmpty){
          print("La lista de colores está vacía.");
        }else{
          print("LISTA DE COLORES = $colores");
        }
        break;
      case 5: // --------------------------------------------------------------------- APAGAR PROGRAMA
        print("Apagando programa ...");
        break;
    }
  }
}
