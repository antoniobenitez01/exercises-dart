/* 
 * RELACIÓN DE EJERCICIOS 1: EJERCICIO 2
 * Programa que realiza operaciones con los tipos built-in
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 25/09/2025
 */
void main()
{
  print("========= TIPOS BUILT-IN ===========");
  print("\nDeclarando variable tipo 'int' ...");                              // Variable tipo INT
  int num = -10;
  print("Variable 'num' = $num");
  print("Valor absoluto de 'num' = ${num.abs()}");
  print("Resultado método isEven = ${num.isEven}");

  print("\nDeclarando variable tipo 'double' ...");                           // Variable tipo Double
  double numdouble = 50.45;
  print("Variable 'numdouble' = $numdouble");
  print("Redondeando valor hacia arriba = ${numdouble.ceil()}");
  print("Redondeando valor hacia abajo = ${numdouble.floor()}");

  print("\nDeclarando variable tipo 'String' ...");                           // Variable tipo String
  String name = "Antonio";
  print("Variable 'name' = $name");
  print("Convirtiendo caracters en mayúsculas = ${name.toUpperCase()}");
  print("Convirtiendo caracteres en minúsculas = ${name.toLowerCase()}");

  print("\nDeclarando variable tipo 'bool' ...");                             // Variable tipo bool
  bool boolvar = true;
  print("Variable 'boolvar' = $boolvar");

  print("\nDeclarando variable tipo 'dynamic' ...");                          // Variable tipo Dynamic
  dynamic dynavar = "Ahora es un String";
  print("Variable 'dynavar' = $dynavar");
  print("Cambiando tipo de variable a 'dynavar' ...");
  dynavar = 123;
  print("Variable 'dynavar' = $dynavar");

  print("\n====== COLECCIONES ======");
  print("\nCreando colección de tipo 'List' ...");                            // Colección tipo LIST
  List lista = [25,5,10];
  print("Colección List = $lista");
  print("Ordenando colección 'lista' ...");
  lista.sort();
  print("Colección List = $lista");

  print("\nCreando colección de tipo 'Map' ...");                             // Colección tipo MAP
  Map fullnames = {
    'Antonio' : 'Benitez',
    'Maria' : 'Del Cármen',
    'Lucas' : 'Borrego'
  };
  print("Colección Map = $fullnames");
  print("Mostrando llaves de 'fullnames' = ${fullnames.keys}");
    print("Mostrando valores de 'fullnames' = ${fullnames.values}");
  
  print("\nCreando colección de tipo 'Set' ...");                             // Colección tipo SET
  Set setlist = {"Coche", "Moto", "Avión","Barco"};
  print("Colección Set = $setlist");
  print("Mostrando primer elemento de 'setlist' = ${setlist.first}");
  print("Mostrando tamaño de 'setlist' = ${setlist.length}");

  print("\nCreando colección de tipo 'Record' ...");                          // Colección tipo RECORD
  Record recordlist = ("Coche",num1: 5,num2: 10,"Moto");
  print("Colección tipo Record = $recordlist");
}