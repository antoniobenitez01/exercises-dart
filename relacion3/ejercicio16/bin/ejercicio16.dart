/* 
 * RELACIÓN DE EJERCICIOS 3: EJERCICIO 16
 * Proyecto de Dart donde vamos a trabajar con la clase DateTime
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 30/10/2025
 */

import 'package:intl/intl.dart';

void main(List<String> arguments) {
  print("\n=== CLASE DATE TIME ===");

  print("\n--- Fecha actual ---");
  DateTime now = DateTime.now();
  print("Fecha y hora actual: $now");

  print("\n--- Fecha actual en UTC ---");
  DateTime nowUTC = DateTime.now().toUtc();
  print("Fecha y hora actual: $nowUTC");

  print("\n--- Fecha actual con Formato Customizado ---");
  DateFormat formatoCustom = DateFormat("dd-MM-yyyy HH:mm:ss");
  String dateFormatted = formatoCustom.format(now);
  print("Fecha y hora actual: $dateFormatted");

  print("\n--- Comparación de dos fechas ---");
  DateTime date1 = DateTime(2024, 6, 17, 15, 30, 0);
  DateTime date2 = DateTime(2024, 6, 17, 18, 45, 0);
  DateTime date3 = DateTime(2023, 12, 25, 10, 0, 0);
  print("\nFecha Nº1: $date1\nFecha Nº2: $date2\nFecha Nº3: $date3");

  print("\n- Operadores de comparación -\n");
  bool isEqual = date1 == date2;
  print("date1 == date2 : $isEqual");
  bool isNotEqual = date1 != date3;
  print("date1 != date3 : $isNotEqual");

  print("\n- Métodos de comparación -\n");
  bool isBefore = date1.isBefore(date2);
  print("date1 es anterior a date2 : $isBefore");
  bool isAfter = date3.isAfter(date2);
  print("date3 es anterior a date2 : $isAfter");

  print("\n- Duración entre dos fechas -\n");
  Duration difference1 = date1.difference(date2);
  Duration difference2 = date2.difference(date3);
  print("Duración entre date1 y date2 : $difference1");
  print("Duración entre date2 y date3 : ${difference2.inDays} días, ${difference2.inHours % 24} horas, ${difference2.inMinutes % 60} minutos");

  print("\n--- Manipular fechas ---");
  print("Añadiendo 5 días a DateTime.now() : ${now.add(Duration(days:5))}");
  print("Restando 5 días a DateTime.now() : ${now.subtract(Duration(days:5))}");
}
