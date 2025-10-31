/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 3
 * Programa escrito para crear una clase BanderaFranjas y sus métodos
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */

import "dart:io";
import "common.dart";

class BanderaFranjas{
  bool isHorizontal = true;
  List<String> colores = [];
  String? paisOrg;

  BanderaFranjas(bool isHorizontal, List<String> colores, String? paisOrg){
    this.isHorizontal = isHorizontal;
    this.colores = colores;
    this.paisOrg = paisOrg;
  }

  // MOSTRAR BANDERA - Muestra los colores de la bandera según su orientación
  void mostrarBandera(){
    if(this.colores.isEmpty){
      print("La bandera no tiene colores introducidos.");
    }else{
      if(this.isHorizontal){
        this.colores.forEach((color){
          for(int i=0;i<5;i++){
            stdout.write(color + "\t");
          }
          stdout.write("\n");
        });
      }else{
        for(int i=0;i<5;i++){
          this.colores.forEach((color){
            stdout.write(color + "\t");
          });
          stdout.write("\n");
        }
      }
    }
  }

  // MISMA BANDERA - Devuelve true si dos banderas son iguales
  bool mismaBandera(BanderaFranjas bandera){
    bool misma = true;
    if(this.isHorizontal != bandera.isHorizontal){
      misma = false;
    }else if(listEquals(this.colores, bandera.colores) == false){
      misma = false;
    }else if(this.paisOrg != bandera.paisOrg){
      misma = false;
    }
    return misma;
  }

  // MISMO COLOR DIFERENTE ORIENTACIÓN - Devuelve true si dos banderas tienen los mismos colores pero diferente orientación
  bool mismoColorDifOrientacion(BanderaFranjas bandera){
    bool resultado = true;
    if(listEquals(this.colores,bandera.colores)){
      if(this.isHorizontal == bandera.isHorizontal){
        resultado = false;
      }
    }
    return resultado;
  }

  // INVERTIR COLORES - Invierte el orden de los colores de la bandera
  void invertirColores(){
    this.colores = this.colores.reversed.toList();
  }

  // INVERTIR ORIENTACION - Invierte la orientación de las franjas
  void invertirOrientacion(){
    this.isHorizontal ? this.isHorizontal = false : this.isHorizontal = true;
  }
}