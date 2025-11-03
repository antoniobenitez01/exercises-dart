/*
 * RELACIÓN DE EJERCICIOS 2: EJERCICIO 17
 * Programa que repite la función del Ejercicio 9
 * con una función recursiva
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 16/10/2025
 */

List<dynamic> cocienteResto(int num1,int num2){
  List<dynamic> resultado = [0,0];
  resultado[0] = cociente(num1,num2);
  resultado[1] = resto(num1,num2);
  return resultado; 
}

double cociente(int dividendo, int divisor){
  if(divisor>dividendo || divisor == 0){
    return 0;
    } else {
      return 1 + cociente(dividendo-divisor, divisor);
      }
}

int resto(int num1, int num2){
  if(num2 == 0){
    return 0;
  }else if(num1 < num2){
    return num1;
  }else{
    return resto(num1-num2,num2);
  }
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