/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 11
 * Programa que define la clase Fracción
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

import "common.dart";

class Fraccion{
  int numerador;
  int denominador;
  Fraccion(this.numerador,this.denominador);

  int sumar() => numerador + denominador;
  int restar() => numerador - denominador;
  int multiplicar() => numerador * denominador;
  double dividir() => denominador == 0 ? 0 : numerador / denominador;
  int thisMCD() => mcd(numerador,denominador);
  Fraccion simplificar() => Fraccion((numerador / thisMCD().floor()).floor(),(denominador / thisMCD()).floor());
  @override
  String toString() => "FRACCIÓN - Numerador: $numerador Denominador: $denominador";
}