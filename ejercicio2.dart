/* 
 * RELACIÓN DE EJERCICIOS 4: EJERCICIO 1
 * Programa escrito para añadir métodos a una clase Restaurante
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 30/10/2025
 */

class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  // 1. Obtener el número de ratings
  int getNumRatings() => this.ratings.length;

  // 2. Añadir otro rating
  void addRating(double rating) => this.ratings.add(rating);

  // 3. Añadir otros ratings
  void addRatings(List<double> ratings) => this.ratings.addAll(ratings);
  
  // 4. Calcular el rating medio
  double averageRating(){
    double suma = 0;
    this.ratings.forEach((rating){
      suma += rating;
    });
    return suma / this.getNumRatings();
  }
}