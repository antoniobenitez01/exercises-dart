/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 12
 * Programa que crea una clase derivada de la clase Fraccion
 * creada anteriormente llamada FraccionComparable
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

import "ejercicio11.dart";

class FraccionComparable extends Fraccion{
  FraccionComparable(super.numerador,super.denominador);
  bool esMayorQue(FraccionComparable fraccion) => (this.numerador / this.denominador) > (fraccion.numerador / fraccion.denominador);
  bool esMenorQue(FraccionComparable fraccion) => (this.numerador / this.denominador) < (fraccion.numerador / fraccion.denominador);
  bool esIgualQue(FraccionComparable fraccion) => (this.numerador / this.denominador) == (fraccion.numerador / fraccion.denominador);
  bool esMayorOIgualQue(FraccionComparable fraccion) => (this.numerador / this.denominador) >= (fraccion.numerador / fraccion.denominador);
  bool esMenorOIgualQue(FraccionComparable fraccion) => (this.numerador / this.denominador) <= (fraccion.numerador / fraccion.denominador);
  bool esDistintoQue(FraccionComparable fraccion) => (this.numerador / this.denominador) != (fraccion.numerador / fraccion.denominador);
}