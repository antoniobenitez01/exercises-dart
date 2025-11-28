
import "dart:io";
import "package:examen_2025/examen_2025.dart";

void main(){

  //  EJERCICIO 1. Distancia Hamming
  
  print("\n--- EJERCICIO 1. DISTANCIA HAMMING ---\n");
  print("A continuación, debe introducir dos cadenas de texto del mismo tamaño.");
  print("Introduzca la primera cadena por teclado.");
  String cadena1 = stdin.readLineSync()!;
  print("Introduzca la segunda cadena por teclado.");
  String cadena2 = stdin.readLineSync()!;
  if(distanciaHamming(cadena1, cadena2) == -1){
    print("ERROR: Las cadenas introducidas no son del mismo tamaño.");
  }else{
    print("Distancia Hamming (con Case Sensitive) entre $cadena1 y $cadena2 = ${distanciaHamming(cadena1,cadena2)}");
    print("Distancia Hamming (sin Case Sensitive) entre $cadena1 y $cadena2 = ${distanciaHamming(cadena1,cadena2, caseSensitive: false)}");
  }

  // EJERCICIO 2. Es Sublista
  print("\n--- EJERCICIO 2. ES SUBLISTA ---\n");
  List<int> lista = [1,2,3,4,5,6,7,8,9,0];
  List<int> sublista = [4,5,6];
  List<int> noSublista = [7,2,3];
  print("Lista Principal: $lista\nSublista Válida: $sublista\nSublista No Válida: $noSublista");
  print("Resultado esSublista con Lista Principal y Sublista Válida = ${esSubLista(lista, sublista)}");
  print("Resultado esSublista con Lista Principal y Sublista No Válida = ${esSubLista(lista, noSublista)}");

  // EJERCICIO 3. Pila
  print("\n--- EJERCICIO 3. PILA ---\n");

  print("1. Crea una Pila de tamaño 10.");
  Pila pila = Pila(10);
  print("Resultado: = ${pila.getPila()}");

  print("\n2. Inserta un 5 en la Pila (y controla que pueda ser null).");
  if(pila.push(5) == null){
    print("La Pila está llena.");
  }else{
    print("Resultado: = ${pila.getPila()}");
  }

  print("\n3. Inserta un 3 en la Pila (y controla que pueda ser null)");
  if(pila.push(3) == null){
    print("La Pila está llena.");
  }else{
    print("Resultado: = ${pila.getPila()}");
  }

  print("\n4. Muestra el tamaño de la Pila");
  print("Tamaño de la Pila: ${pila.getItems()}");

  print("\n5. Extrae un elemento de la Pila (y controla que pueda ser null)");
  int? extraido = pila.pop();
  if(extraido == null){
    print("La Pila está vacía.");
  }else{
    print("Número extraído: $extraido");
  }

  print("\n6. Muestra el tamaño de la Pila");
  print("Tamaño de la Pila: ${pila.getItems()}");

  print("\n7. Muestra la Pila completa");
  print("Pila Completa = ${pila.getPila()}");
}