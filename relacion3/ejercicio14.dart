/* 
 * RELACIÓN DE EJERCICIOS 3: EJERCICIO 14
 * Programa que muestra un menú de opciones para
 * trabajar sobre un objeto Map
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 24/10/2025
 */

import "./common.dart";
import "dart:io";

void main(){
  // ================================================================================= VARIABLEs
  // Declaración e Inicialización inicial de Map de Personas (String,String)
  Map<String,String> personas = {"Pepe":"111111111","María":"222222222","Ana":"3333333"};
  int opcion = 0;
  String personaTeclado;
  String numeroTeclado;
  // ================================================================================= PROGRAMA
  while(opcion != 5){
    opcion = menu("\n=== MENÚ DE OPERACIONES MAP ==="+
    "\n1. Incluir persona\n2. Eliminar persona\n3. Buscar persona\n4. Mostrar lista de personas\n5. Salir del programa",1,5);
    switch(opcion){
      case 1: // --------------------------------------------------------------------- INCLUIR PERSONA
        print("Introduzca el nombre de la persona a añadir.");
        personaTeclado = stdin.readLineSync()!;
        if(personas.containsKey(personaTeclado)){
          print("La persona introducida ya está registrada.");
        }else{
          print("Introduzca el número de la persona a añadir.");
          numeroTeclado = stdin.readLineSync()!;
          personas[personaTeclado] = numeroTeclado;
        }
        break;
      case 2: // --------------------------------------------------------------------- ELIMINAR PERSONA
        if(personas.isEmpty){
          print("La lista de personas está vacía.");
        }else{
          print("- Lista de Personas -");
          personas.forEach((persona, value){
            print("Nombre: $persona - Número: $value");
          });
          print("Introduzca el nombre de la persona a eliminar.");
          personaTeclado = stdin.readLineSync()!;
          if(personas.containsKey(personaTeclado)){
            personas.remove(personaTeclado);
          }else{
            print("La persona introducida no se encuentra en la lista.");
          }
        }
        break;
      case 3: // --------------------------------------------------------------------- BUSCAR PERSONA
        print("Introduzca el nombre de la persona a buscar.");
        personaTeclado = stdin.readLineSync()!;
        if(personas.containsKey(personaTeclado)){
          personas.forEach((persona,numero){
            if(personaTeclado == persona){
              print("Nombre: $persona - Número: $numero");
            }
          });
        }else{
          print("La persona introducida no está registrada.");
        }
        break;
      case 4: // --------------------------------------------------------------------- MOSTRAR LISTA DE PERSONAS
        if(personas.isEmpty){
          print("La lista de personas está vacía.");
        }else{
          print("- Lista de Personas -");
          personas.forEach((persona, value){
            print("Nombre: $persona - Número: $value");
          });
        }
        break;
      case 5: // --------------------------------------------------------------------- APAGAR PROGRAMA
        print("Apagando programa ...");
        break;
    }
  }
}