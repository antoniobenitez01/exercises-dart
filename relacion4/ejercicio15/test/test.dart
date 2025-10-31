/*
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 15
 * Batería de Tests para Ejercicio 9
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */
import "package:ejercicio15/ejercicio9.dart";
import 'package:test/test.dart';

void main() {
  CuentaCredito credito = CuentaCredito(123000,"Antonio",900,0,100);
  CuentaDebito debito = CuentaDebito(456000,"María",500,0);
  test("Depositará 500€ en Cuenta Crédito.",(){
    credito.depositarDinero(500);
    final double result = credito.saldo;
    final double expected = 1400;
    expect(result,expected);
  });
  test("Depositará 500€ en Cuenta Débito.",(){
    debito.depositarDinero(500);
    final double result = debito.saldo;
    final double expected = 1000;
    expect(result,expected);
  });
  test("Extraerá 500€ en Cuenta Crédito.",(){
    credito.extraerDinero(500);
    final double result = credito.saldo;
    final double expected = 900;
    expect(result,expected);
  });
  test("Extraerá 500€ en Cuenta Débito.",(){
    debito.extraerDinero(500);
    final double result = debito.saldo;
    final double expected = 500;
    expect(result,expected);
  });
  test("Transferirá 500€ de Cuenta Crédito a Cuenta Débito.",(){
    credito.transferirDinero(debito, 500);
    final double result = debito.saldo;
    final double expected = 1000;
    expect(result,expected);
  });
  test("Transferirá 500€ de Cuenta Débito a Cuenta Crédito.",(){
    debito.transferirDinero(credito, 500);
    final double result = credito.saldo;
    final double expected = 900;
    expect(result,expected);
  });
}
