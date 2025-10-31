/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 9
 * Programa que reestructura la clase del ejercicio 8
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

abstract class CuentaBancaria{
  int numCuenta;
  String titular;
  double saldo = 0;
  int numOperaciones = 0;

  CuentaBancaria(this.numCuenta,this.titular,this.saldo,this.numOperaciones);

  void depositarDinero(double ammount){
    saldo += ammount;
  }

  void extraerDinero(double ammount){
    saldo -= ammount;
  }

  void transferirDinero(CuentaBancaria cuenta, double ammount){
    extraerDinero(ammount);
    cuenta.depositarDinero(ammount);
  }

  @override
  String toString(){
    return "$numCuenta - Titular: $titular Saldo: $saldo€ Número de operaciones: $numOperaciones";
  }
}

class CuentaDebito extends CuentaBancaria{
  CuentaDebito(super.numCuenta, super.titular, super.saldo, super.numOperaciones);

  @override
  void extraerDinero(double ammount){
    if(saldo - ammount < 0){
      print("ERROR DÉBITO: No hay suficientes fondos para extraer $ammount €.");
    }else{
      saldo -= ammount;
    }
  }

  @override
  void transferirDinero(CuentaBancaria cuenta, double ammount){
    if(saldo - ammount < 0){
      print("ERROR DÉBITO: No hay suficientes fondos para extraer $ammount €.");
    }else{
      extraerDinero(ammount);
      cuenta.depositarDinero(ammount);
    }
  }
}

class CuentaCredito extends CuentaBancaria{
  double credito;
  CuentaCredito(super.numCuenta, super.titular, super.saldo, super.numOperaciones,this.credito);

  @override
  void extraerDinero(double ammount){
    if(saldo - ammount < (credito * -1)){
      print("ERROR CRÉDITO: No hay suficiente crédito para extraer $ammount €.");
    }else{
      saldo -= ammount;
    }
  }

  @override
  void transferirDinero(CuentaBancaria cuenta, double ammount){
    if(saldo - ammount < (credito * -1)){
      print("ERROR CRÉDITO: No hay suficiente crédito para extraer $ammount €.");
    }else{
      extraerDinero(ammount);
      cuenta.depositarDinero(ammount);
    }
  }

  @override
  String toString(){
    return "$numCuenta - Titular: $titular Saldo: $saldo€ Número de operaciones: $numOperaciones Crédito: $credito€";
  }
}

