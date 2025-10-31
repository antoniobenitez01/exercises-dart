/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 5
 * Programa escrito para crear una clase Vector
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

import "ejercicio4.dart";

class Vector{
  Punto inicio;
  Punto fin;

  Vector(this.inicio, this.fin);

  // MOVE HORIZONTAL - Mueve horizontalmente el vector
  void moveHorizontal(double ammount){
    inicio.x += ammount;
    fin.x += ammount;
  }

  // MOVE VERTICAL - Mueve verticalmente el vector
  void moveVertical(double ammount){
    inicio.y += ammount;
    fin.y += ammount;
  }

  // MOVE COTA - Mueve las cotas del vector
  void moveCota(double ammount){
    inicio.z += ammount;
    fin.z += ammount;
  }

  // ESCALAR - Calcula el producto escalar por otro Vector
  double productoEscalar(Vector vector){
    return (fin.x - inicio.x) * (vector.fin.x - vector.inicio.x) + 
           (fin.y - inicio.y) * (vector.fin.y - vector.inicio.y) +
           (fin.z - inicio.z) * (vector.fin.z - vector.inicio.z);
  }

  // SUMAR VECTOR - Suma un Vector a otro
  void sumarVector(Vector vector){
    fin.x = (fin.x - inicio.x) + (vector.fin.x - vector.inicio.x);
    fin.y = (fin.y - inicio.y) + (vector.fin.y - vector.inicio.y);
    fin.z = (fin.z - inicio.z) + (vector.fin.z - vector.inicio.z);
  }
}