/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 7
 * Programa que trabaja con clases Figura, Circulo, Cuadrado y Triangulo
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

import "dart:math";

abstract class Figura{
  double get area;
  double get perimetro;
  void printValores();
}

class Cuadrado extends Figura {
  Cuadrado(this.lado);
  final double lado;

  @override
  double get area => lado * lado;

  @override
  double get perimetro => 4 * lado;

  @override
  void printValores(){
    print("CUADRADO - Área: ${this.area} Perímetro: ${this.perimetro}");
  }
}

class Circulo extends Figura {
  Circulo(this.radio);
  final double radio;

  @override
  double get area => pi * radio * radio;

  @override
  double get perimetro => 2 * pi * radio;

  @override
  void printValores(){
    print("CÍRCULO - Área: ${this.area} Perímetro: ${this.perimetro}");
  }
}

class Triangulo extends Figura {
  double lado1;
  double lado2;
  double lado3;
  Triangulo(this.lado1,this.lado2,this.lado3);

  @override
  double get area => sqrt(((lado1+lado2+lado3)/2)*(((lado1+lado2+lado3)/2)-lado1)*(((lado1+lado2+lado3)/2)-lado2)*(((lado1+lado2+lado3)/2)-lado3));

  @override
  double get perimetro => lado1 + lado2 + lado3;

  @override
  void printValores(){
    print("TRIÁNGULO - Área: ${this.area} Perímetro: ${this.perimetro}");
  }
}

void main(){
  List<Figura> figuras = [new Cuadrado(5),new Circulo(5),new Triangulo(3,4,5)];
  figuras.forEach((figura){
    figura.printValores();
  });
}