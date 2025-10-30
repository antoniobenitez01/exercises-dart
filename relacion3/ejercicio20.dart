/* 
 * RELACIÓN DE EJERCICIOS 3: EJERCICIO 20
 * Programa donde trabajamos con funciones sin nombre
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 23/10/2025
 */

void main(){

  // 1. Función sin nombre asignada a una variable:
  print("--- Función sin nombre asignada a una variable ---");
  var bienvenido = (String nombre) => 'Bienvenido, $nombre';
  print(bienvenido("Antonio Benítez"));

  // 2. Función sin nombre dentro de una función de orden superior (como forEach)
  print("\n--- Función sin nombre dentro de una función de orden superior (como forEach) ---");
  List listaNum = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];
  listaNum.forEach((number) => print("Número: $number"));

  // 3. Función con la sintaxis de flecha (=>) para funciones de una sola línea
  print("\n--- Función con la sintaxis de flecha (=>) para funciones de una sola línea ---");
  void imprimirSaludo(String nombre) => print("Buenos días, $nombre");
  imprimirSaludo("Antonio Benítez");

  // 4. Función como argumento de otra función
  print("\n--- Función como argumento de otra función ---");
  int sumar50(int num) => num + 50;
  int restar10(int num) => num - 10;
  print("Resultado = ${restar10(sumar50(100))}"); 

  // 5. Función dentro de un map
  print("\n--- Función dentro de un map ---");
  Map<String, Function> operaciones = {
    "Sumar" : (int num1, int num2) => num1+num2,
    "Restar" : (int num1, int num2) => num1-num2,
    "Multiplicar" : (int num1, int num2) => num1*num2,
    "Dividir" : (int num1, int num2) => num2 == 0 ? 0 : num1/num2
  };
  print("Función sumar: ${operaciones["Sumar"]!(5,5)}");
}
