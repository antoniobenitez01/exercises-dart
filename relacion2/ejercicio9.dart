/* 
 * RELACIÓN DE EJERCICIOS 2: EJERCICIO 9
 * Programa que utiliza una función que llama a otras dos funciones
 * para calcular el cociente y el resto de una división
 * entre dos números positivos enteros
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 16/10/2025
 */

List<dynamic> cocienteResto(int num1,int num2){
  List<dynamic> resultado = [0,0];
  resultado[0] = cociente(num1,num2);
  resultado[1] = resto(num1,num2);
  return resultado; 
}

double cociente(int num1, int num2){
  return num2 == 0 ? 0 : num1/num2;
}

int resto(int num1, int num2){
  return num2 == 0 ? 0 : num1%num2;
}

void main(){
  List resultado;
  print("Utilizando función 'cocienteResto' con parámetros 50 y 5 ...");
  resultado = cocienteResto(50,5);
  print("Resultado = Cociente: " + resultado[0].toString() + " - Resto: " + resultado[1].toString());

  print("Utilizando función 'cocienteResto' con parámetros 250 y 13 ...");
  resultado = cocienteResto(250,13);
  print("Resultado = Cociente: " + resultado[0].toString() + " - Resto: " + resultado[1].toString());
  
  print("Utilizando función 'cocienteResto' con parámetros 10 y 0 ...");
  resultado = cocienteResto(10,0);
  print("Resultado = Cociente: " + resultado[0].toString() + " - Resto: " + resultado[1].toString());
}