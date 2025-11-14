/*
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 13
 * Programa que crea una clase mixin Comparable
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

import "ejercicio11.dart";

mixin Comparable<T>{
  bool esMayorQue(T objeto);
  bool esMenorQue(T objeto);
  bool esIgualQue(T objeto);
  bool esMayorOIgualQue(T objeto);
  bool esMenorOIgualQue(T objeto);
  bool esDistintoQue(T objeto);
}

class FraccionComparable extends Fraccion with Comparable<Fraccion>{
  FraccionComparable(super.numerador,super.denominador);
  @override
  bool esMayorQue(Fraccion fraccion) => (this.numerador / this.denominador) > (fraccion.numerador / fraccion.denominador);
  @override
  bool esMenorQue(Fraccion fraccion) => (this.numerador / this.denominador) < (fraccion.numerador / fraccion.denominador);
  @override
  bool esIgualQue(Fraccion fraccion) => (this.numerador / this.denominador) == (fraccion.numerador / fraccion.denominador);
  @override
  bool esMayorOIgualQue(Fraccion fraccion) => (this.numerador / this.denominador) >= (fraccion.numerador / fraccion.denominador);
  @override
  bool esMenorOIgualQue(Fraccion fraccion) => (this.numerador / this.denominador) <= (fraccion.numerador / fraccion.denominador);
  @override
  bool esDistintoQue(Fraccion fraccion) => (this.numerador / this.denominador) != (fraccion.numerador / fraccion.denominador);
}

