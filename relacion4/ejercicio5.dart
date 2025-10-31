/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 5
 * Programa escrito para crear una clase Vector
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

import "ejercicio4.dart";

class Vector{
  Punto inicio = new Punto(0,0,0);
  Punto fin = new Punto(0,0,0);

  Vector(Punto inicio, Punto fin){
    this.inicio = inicio;
    this.fin = fin;
  }

  // MOVE HORIZONTAL - Mueve horizontalmente el vector
  void moveHorizontal(double ammount){
    this.inicio.x += ammount;
    this.fin.x += ammount;
  }

  // MOVE VERTICAL - Mueve verticalmente el vector
  void moveVertical(double ammount){
    this.inicio.y += ammount;
    this.fin.y += ammount;
  }

  // MOVE COTA - Mueve las cotas del vector
  void moveCota(double ammount){
    this.inicio.z += ammount;
    this.fin.z += ammount;
  }

  // ESCALAR - Calcula el producto escalar por otro Vector
  double productoEscalar(Vector vector){
    return (this.fin.x - this.inicio.x) * (vector.fin.x - vector.inicio.x) + 
           (this.fin.y - this.inicio.y) * (vector.fin.y - vector.inicio.y) +
           (this.fin.z - this.inicio.z) * (vector.fin.z - vector.inicio.z);
  }

  // SUMAR VECTOR - Suma un Vector a otro
  void sumarVector(Vector vector){
    this.fin.x += (vector.fin.x - vector.inicio.x);
    this.fin.y += (vector.fin.y - vector.inicio.y);
    this.fin.z += (vector.fin.z - vector.inicio.z);
  }
}