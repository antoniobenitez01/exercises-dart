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

  Punto(this.x, this.y, this.z);

  void moveX(double ammount){
    x += ammount;
  }

  void moveY(double ammount){
    y += ammount;
  }

  void moveZ(double ammount){
    z += ammount;
  }

  @override
  String toString(){
    return '($x,$y,$z)';
  }
}