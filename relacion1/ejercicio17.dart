/* 
 * RELACIÓN DE EJERCICIOS 1: EJERCICIO 17 - 18
 * Programa que trabajo con tipos enumerados
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 30/09/2025
 */
import "dart:io";

enum rainbowColors {blue, green, yellow, orange, red, purple}     //Enumerado - Colores del Arco iris

void main()
{
  for (var value in rainbowColors.values) 
  {
    stdout.write(value.name + " ");
  }
  stdout.write("\n");
  print(rainbowColors.values[1].name);
  print("Introduzca un valor a buscar en el enum.");
  String? respuesta = stdin.readLineSync();
  try 
  {
    print("Nombre encontrado = " + byName(respuesta!).name);
  } on ArgumentError
  {
    print("Ese nombre no se encuentra en el enumerado.");
  }
}

// BY NAME - Método que recoge un String y lo busca en el enumerado
rainbowColors byName(String name)
{
  for (var value in rainbowColors.values) 
  {
    if (value.name.toLowerCase() == name.toLowerCase()) return value;
  }
  //Lanza excepción si no se encuentra en el enumerado
  throw ArgumentError.value(name, "name", "No enum value with that name");
}