import 'package:ejercicio17/validaciones.dart';
import 'package:test/test.dart';

void main(){

  // TEST - ISURL
  test("Devuelve true si el String introducido es una URL",(){
    final bool result = isURL("https://google.com");
    final bool expected = true;
    expect(result,expected);
  });

  // TEST - ISEMAIL
  test("Devuelve true si el String introducido es un EMail",(){
    final bool result = isEmail("correo@correcto.com");
    final bool expected = true;
    expect(result,expected);
  });

  // TEST - ISDNI
  test("Devuelve true si el String introducido es un DNI",(){
    final bool result = isDNI("66573163P");
    final bool expected = true;
    expect(result,expected);
  });

  // TEST GROUP - ISRGB
  group("Tests con función isRGB",(){
    test("Devuelve true si el String introducido es un color HEX",(){
    final bool result = isRGB("#982A3B");
    final bool expected = true;
    expect(result,expected);
    });
    test("Devuelve true si el String introducido es un color HEX",(){
      final bool result = isRGB("#4F6");
      final bool expected = true;
      expect(result,expected);
    });
    test("Devuelve true si el String introducido es un color HEX",(){
      final bool result = isRGB("987s");
      final bool expected = true;
      expect(result,expected);
    });
    test("Devuelve true si el String introducido es un color HEX",(){
      final bool result = isRGB("882244");
      final bool expected = true;
      expect(result,expected);
    });
  });
}