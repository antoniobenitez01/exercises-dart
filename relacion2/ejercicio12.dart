/*
 * RELACIÓN DE EJERCICIOS 2: EJERCICIO 12
 * Versión del Ejercicio 11 donde las funciones muestran el resultado
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 16/10/2025
 */

void minTemp(List temperaturas){
  List sorted = temperaturas;
  sorted.sort();
  print("Temperatura máxima: ${sorted[0]}");
}

void maxTemp(List temperaturas){
  List sorted = temperaturas;
  sorted.sort();
  sorted = sorted.reversed.toList();
  print("Temperatura mínima: ${sorted[0]}");
}

void mediaTemp(List temperaturas){
  double media = 0;
  temperaturas.forEach((num){
    media += num;
  });
  print("Temperatura media: ${media / temperaturas.length}");
}

void main(){
  List temperaturas = [56.54, 54.34, 34.34, 23.34];
  print("Lista de temperaturas máximas = $temperaturas");
  maxTemp(temperaturas);
  minTemp(temperaturas);
  mediaTemp(temperaturas);
}