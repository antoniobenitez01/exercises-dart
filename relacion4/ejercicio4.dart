/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 4
 * Programa escrito para crear una clase Punto
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

class Punto{
  double x = 0;
  double y = 0;
  double z = 0;

  Punto(double x, double y, double z){
    this.x = x;
    this.y = y;
    this.z = z;
  }

  void moveX(double ammount){
    this.x += ammount;
  }

  void moveY(double ammount){
    this.y += ammount;
  }

  void moveZ(double ammount){
    this.z += ammount;
  }

  @override
  String toString(){
    return '(${this.x},${this.y},${this.z})';
  }
}