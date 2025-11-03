/* 
 * RELACIÓN DE EJERCICIOS 1: EJERCICIO 7
 * Programa que resuelve raíces de ecuación de segundo grado
 * introduciendo los coeficientes por teclado
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 25/09/2025
 */
import 'dart:io';
import 'dart:math';
void main()
{
  //RECOGIDA DE VALORES ==================================
  print("Introduzca el valor de a");
  double? a = double.parse(stdin.readLineSync()!);
  print("Introduzca el valor de b");
  double? b = double.parse(stdin.readLineSync()!);
  print("Introduzca el valor de c");
  double? c = double.parse(stdin.readLineSync()!);
  // PROGRAMA ============================================
  double x1 = (-b + sqrt(pow(b,2) - 4*a*c)) / 2*a;
  double x2 = (-b - sqrt(pow(b,2) - 4*a*c)) / 2*a;
  if(a == 0)
  {
    print("El coeficiente 'a' no puede ser 0.");
  }else if(x1.isNaN || x2.isNaN)
  {
    print("La raíz no es real.");
  }else
  {
    print("---- RESULTADO ----"
        + "\nCoeficiente a = $a"
        + "\nCoeficiente b = $b"
        + "\nCoeficiente c = $c"
        + "\nValor de x rama positiva = $x1"
        + "\nValor de x rama negativa = $x2");
  }
}