/* 
 * COMMON - Relación de Ejercicios 4
 * Librería de métodos en común para la relación de ejercicios 4
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 31/10/2025
 */
bool listEquals<T>(List<T>? a, List<T>? b) {
 if (a == null) {
   return b == null;
 }
 if (b == null || a.length != b.length) {
   return false;
 }
 if (identical(a, b)) {
   return true;
 }
 for (int index = 0; index < a.length; index += 1) {
   if (a[index] != b[index]) {
     return false;
   }
 }
 return true;
}

int mcd(int num1, int num2){
  int resultado;
  if(num2 == 0)
  {
    resultado = num1;
  }else
  {
    resultado = mcd(num2, num1%num2);
  }
  return resultado;
}