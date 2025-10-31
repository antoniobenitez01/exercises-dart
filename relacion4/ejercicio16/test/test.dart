/*
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 16
 * Batería de Tests para Ejercicio 11
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */
import "package:ejercicio16/ejercicio11.dart";
import 'package:test/test.dart';

void main() {
  Fraccion fraccion = Fraccion(5,5);
  test("Sumará los valores de la Fracción",(){
    final int result = fraccion.sumar();
    final int expected = 10;
    expect(result,expected);
  });
  test("Restará los valores de la Fracción",(){
    final int result = fraccion.restar();
    final int expected = 0;
    expect(result,expected);
  });
  test("Multiplicará los valores de la Fracción",(){
    final int result = fraccion.multiplicar();
    final int expected = 25;
    expect(result,expected);
  });
  test("Dividirá los valores de la Fracción",(){
    final double result = fraccion.dividir();
    final double expected = 1;
    expect(result,expected);
  });
  test("Devolverá el MCD de los valores de la Fracción",(){
    final int result = fraccion.thisMCD();
    final int expected = 5;
    expect(result,expected);
  });
  test("Simplificará la Fracción",(){
    Fraccion simplificada = fraccion.simplificar();
    final int result = simplificada.denominador;
    final int expected = 1;
    expect(result,expected);
  });
}
