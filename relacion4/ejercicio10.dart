/*
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 10
 * Refactorización del código del Ejercicio 9 para remover
 * el uso de jerarquías de clases y herencia
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

abstract class CuentaBancaria{
  void depositarDinero(double ammount);
  void extraerDinero(double ammount);
  void transferirDinero(CuentaBancaria cuenta, double ammount);
}

class CuentaDebito implements CuentaBancaria{
  int numCuenta;
  String titular;
  double saldo = 0;
  int numOperaciones = 0;
  CuentaDebito(this.numCuenta,this.titular,this.saldo,this.numOperaciones);

  @override
  void depositarDinero(double ammount){
    this.saldo += ammount;
  }

  @override
  void extraerDinero(double ammount){
    if(this.saldo - ammount < 0){
      print("ERROR DÉBITO: No hay suficientes fondos para extraer $ammount €.");
    }else{
      this.saldo -= ammount;
    }
  }

  @override
  void transferirDinero(CuentaBancaria cuenta, double ammount){
    if(this.saldo - ammount < 0){
      print("ERROR DÉBITO: No hay suficientes fondos para extraer $ammount €.");
    }else{
      this.extraerDinero(ammount);
      cuenta.depositarDinero(ammount);
    }
  }
}

class CuentaCredito implements CuentaBancaria{
  int numCuenta;
  String titular;
  double saldo = 0;
  int numOperaciones = 0;
  double credito;
  CuentaCredito(this.numCuenta,this.titular,this.saldo,this.numOperaciones,this.credito);

  @override
  void depositarDinero(double ammount){
    this.saldo += ammount;
  }

  @override
  void extraerDinero(double ammount){
    if(this.saldo - ammount < (credito * -1)){
      print("ERROR CRÉDITO: No hay suficiente crédito para extraer $ammount €.");
    }else{
      this.saldo -= ammount;
    }
  }

  @override
  void transferirDinero(CuentaBancaria cuenta, double ammount){
    if(this.saldo - ammount < (credito * -1)){
      print("ERROR CRÉDITO: No hay suficiente crédito para extraer $ammount €.");
    }else{
      this.extraerDinero(ammount);
      cuenta.depositarDinero(ammount);
    }
  }

  @override
  String toString(){
    return "$numCuenta - Titular: $titular Saldo: $saldo€ Número de operaciones: $numOperaciones Crédito: $credito€";
  }
}

void main(){

  // Creación inicial de objetos
  CuentaCredito credito = new CuentaCredito(123000,"Antonio",900,0,100);
  CuentaDebito debito = new CuentaDebito(456000,"María",500,0);

  // Muestra inicial de objetos
  print("\n--- Muestra inicial de Cuenta Crédito y Cuenta Débito ---\n");
  mostrarCuentas(credito,debito);

  // Uso método depositar dinero
  print("\nDepositando 500€ en Cuenta Crédito y Cuenta Débito ...\n");
  credito.depositarDinero(500);
  debito.depositarDinero(500);
  mostrarCuentas(credito,debito);

  // Uso método retirar dinero
  print("\nRetirando 1500€ de Cuenta Crédito y Cuenta Débito ...\n");
  credito.extraerDinero(1500);
  debito.extraerDinero(1500);
  mostrarCuentas(credito,debito);
  print("\n Retirando 100€ de Cuenta Crédito ...\n");
  credito.extraerDinero(100);
  mostrarCuentas(credito,debito);

  //Uso método transferir dinero
  print("\nTransferiendo 500€ de Cuenta Débito a Cuenta Crédito ...\n");
  debito.transferirDinero(credito, 500);
  mostrarCuentas(credito,debito);

  print("\nTransferiendo 600€ de Cuenta Débito a Cuenta Crédito ...\n");
  debito.transferirDinero(credito, 600);
  mostrarCuentas(credito,debito);

  print("\nTransferiendo 600€ de Cuenta Crédito a Cuenta Débito ...\n");
  credito.transferirDinero(debito, 600);
  mostrarCuentas(credito,debito);
}

void mostrarCuentas(CuentaCredito credito, CuentaDebito debito){
  print(credito.toString());
  print(debito.toString());
}