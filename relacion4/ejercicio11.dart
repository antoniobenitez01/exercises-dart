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

  int sumar() => this.numerador + this.denominador;
  int restar() => this.numerador - this.denominador;
  int multiplicar() => this.numerador * this.denominador;
  double dividir() => this.denominador == 0 ? 0 : this.numerador / this.denominador;
  int thisMCD() => mcd(this.numerador,this.denominador);
  Fraccion simplificar() => new Fraccion((this.numerador / this.thisMCD().floor()).floor(),(this.denominador / this.thisMCD()).floor());
  @override
  String toString() => "FRACCIÓN - Numerador: $numerador Denominador: $denominador";
}