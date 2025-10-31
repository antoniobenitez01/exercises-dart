/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 8
 * Programa que crea una clase de Cuenta Bancaria
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

class CuentaBancaria{
  int numCuenta;
  String titular;
  double saldo = 0;
  int numOperaciones = 0;

  CuentaBancaria(this.numCuenta,this.titular,this.saldo,this.numOperaciones);

  void depositarDinero(double ammount){
    this.saldo += ammount;
  }

  void extraerDinero(double ammount){
    this.saldo -= ammount;
  }

  void transferirDinero(CuentaBancaria cuenta, double ammount){
    this.saldo -= ammount;
    cuenta.saldo += ammount;
  }

  @override
  String toString(){
    return "$numCuenta - Titular: $titular Saldo: $saldo Número de operaciones: $numOperaciones";
  }
}