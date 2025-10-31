/*
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 14
 * Batería de Tests para Ejercicio 4 y Ejercicio 5
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */
import "package:ejercicio14/ejercicio4.dart";
import "package:ejercicio14/ejercicio5.dart";
import 'package:test/test.dart';

void main() {
  Punto puntoTest = Punto(0,0,0);
  // TEST GROUP - EJERCICIO 4
  group("Ejercicio 4 - Tests",(){
    test("Moverá las coordenadas X 5 puntos.",(){
      puntoTest.moveX(5.0);
      final double result = puntoTest.x;
      final double expected = 5;
      expect(result,expected);
    });
    test("Moverá las coordenadas Y 5 puntos.",(){
      puntoTest.moveY(5.0);
      final double result = puntoTest.y;
      final double expected = 5;
      expect(result,expected);
    });
    test("Moverá las coordenadas Z 5 puntos.",(){
      puntoTest.moveZ(5.0);
      final double result = puntoTest.z;
      final double expected = 5;
      expect(result,expected);
    });
  });
  // TEST GROUP - EJERCICIO 5
  group("Ejercicio 5 - Tests",(){
    Vector vector = Vector(Punto(0,0,0),Punto(5,5,5));
    Vector vector2 = Vector(Punto(1,1,1),Punto(5,5,5));
    test("Moverá el Vector horizontalmente 5 puntos.",(){
      vector.moveHorizontal(5);
      final double result = vector.inicio.x;
      final double expected = 5;
      expect(result,expected);
    });
    test("Moverá el Vector verticalmente 5 puntos.",(){
      vector.moveVertical(5);
      final double result = vector.inicio.y;
      final double expected = 5;
      expect(result,expected);
    });
    test("Moverá la cota del Vector 5 puntos.",(){
      vector.moveCota(5);
      final double result = vector.inicio.z;
      final double expected = 5;
      expect(result,expected);
    });
    test("Calculará el producto escalar por otro Vector",(){
      final double result = vector.productoEscalar(vector2);
      final double expected = 60;
      expect(result,expected);
    });
    test("Sumará un Vector a otro",(){
      vector.sumarVector(vector2);
      final double result = vector.fin.x;
      final double expected = 9;
      expect(result,expected);
    });
  });
}
