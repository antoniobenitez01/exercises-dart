/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 1
 * Programa que trabaja con una clase Persona
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 30/10/2025
 */

class Persona{
  String? nombre;
  int? edad;
  double? altura;

  Persona(String nombre, int edad, double altura){
    this.nombre = nombre;
    this.edad = edad;
    this.altura = altura;
  }

  void personaDescripcion() => print("Mi nombre es ${this.nombre}. Tengo ${this.edad} años, tengo ${this.altura} metros de altura.");

  @override
  String toString() => "Nombre: ${this.nombre} - Edad: ${this.edad} - Altura: ${this.altura}m";
}

void main(){
  Persona persona1 = new Persona("Antonio",23,1.78);
  Persona persona2 = new Persona("María",19,1.56);
  persona1.personaDescripcion();
  print(persona2.toString());
}