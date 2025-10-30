/* 
 * RELACIÓN DE EJERCICIOS 3: EJERCICIO 15
 * Programa que trabaja con los objetos Uri para
 * codificar, decodificar, manipular e interpretar URLs
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 30/10/2025
 */

void main(){
  // Imprimimos todos los valores de una URL
  print("\n--- Imprimiendo valores individuales de un objeto URI ---\n");
  var uri1 = Uri.parse('https://www.example.com:8080/path/to/resource?query=flutter#section1');
  printHTTPS(uri1);

  print("\n--- Creando objetos URI a partir de elementos individuales ---");
  print("\n- URI de HTTP/HTTPS -");
  var uri2 = Uri.https("www.example.com","/path/to/resource",{"query":"flutter"});
  printHTTPS(uri2);
  print("\n- URI de Archivo -");
  var uri3 = Uri.file("C:/Users/dam2/Desktop/Programación Multimedia/Ejercicios_Dart/relacion1/ejercicio1.dart");
  printPath(uri3);
    print("\n- URI de Teléfono -");
  var uri4 = Uri.parse('tel:+1234567890');
  printPath(uri4);
}

void printHTTPS(Uri uri){
  print('Esquema: ${uri.scheme}');
  print('Host: ${uri.host}');
  print('Puerto: ${uri.port}');
  print('Path: ${uri.path}');
  print('Consulta: ${uri.query}');
  print('Fragmento: ${uri.fragment}');
}

void printPath(Uri uri){
  print('Esquema: ${uri.scheme}');
  print('Path: ${uri.path}');
}
