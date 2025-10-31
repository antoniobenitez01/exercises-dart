/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 6
 * Modificar una clase creada por Gemini para adaptarla
 * a la clase creada anteriormente Punto
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

import "ejercicio4.dart";

class Vector{
  Punto inicio = new Punto(0,0,0);    // Coordenadas del origen 
  Punto fin = new Punto(0,0,0);       // Coordenadas del destino

  // Constructor 
  Vector(Punto origen, Punto destino);

  // Método para calcular el producto escalar
  double productoEscalar(Vector vector){
    return (this.fin.x - this.inicio.x) * (vector.fin.x - vector.inicio.x) + 
           (this.fin.y - this.inicio.y) * (vector.fin.y - vector.inicio.y) +
           (this.fin.z - this.inicio.z) * (vector.fin.z - vector.inicio.z);
  }

  // Método para multiplicar un vector por un escalar 
  Vector multiplicarPorEscalar(double escalar) { 
    return Vector(this.inicio,new Punto(((this.fin.x - this.inicio.x) * escalar) + this.inicio.x,
                                        ((this.fin.y - this.inicio.y) * escalar) + this.inicio.y,
                                        ((this.fin.z - this.inicio.z) * escalar) + this.inicio.z)); 
  }

  // Método para sumar dos vectores 
  Vector suma(Vector otroVector) { 
    return Vector(this.inicio,new Punto(this.fin.x + (otroVector.fin.x - otroVector.inicio.x),
                                        this.fin.y + (otroVector.fin.y - otroVector.inicio.y),
                                        this.fin.z + (otroVector.fin.z - otroVector.inicio.z))); 
  }

  // Método para calcular el módulo del vector 
  double modulo() { 
    return ((this.fin.x - this.inicio.x) * (this.fin.x - this.inicio.x) + 
    (this.fin.y - this.inicio.y) * (this.fin.y - this.inicio.y) + 
    (this.fin.z - this.inicio.z) * (this.fin.z - this.inicio.z)); 
  }
}