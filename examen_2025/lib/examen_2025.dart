// EJERCICIO 1. ES SUBLISTA
int distanciaHamming(String str1, String str2, {bool caseSensitive = true}){
  int resultado = -1;
  if(str1.length == str2.length){
    resultado = 0;
    if(caseSensitive){
      for(int i=0;i<str1.length;i++){
        if(str1[i] != str2[i]){
          resultado++;
        }
      }
    }else{
      for(int i=0;i<str1.length;i++){
        if(str1[i].toLowerCase() != str2[i].toLowerCase()){
          resultado++;
        }
      }
    }
  }
  return resultado;
}

// EJERCICIO 2. ES SUBLISTA
bool esSubLista(List<int> lista,List<int>sublista){
  bool esSubLista = false;
  if(sublista.length < lista.length){
    for(int i=0;i<lista.length;i++){
      if((lista[i] == sublista.first)){
        int contador = 0;
        for(int j = 0; j < sublista.length; j++){
          if(lista[i+j] == sublista[j]){
            contador++;
          }
        }
        if(contador == sublista.length){
          esSubLista = true;
        }
      }
    }
  }
  return esSubLista;
}

// EJERCICIO 3. CLASE PILA
class Pila{
  List<int> pila = [];
  int longitud;
  int items = 0;

  Pila(this.longitud);

  List<int> getPila(){
    return pila;
  }

  int getItems(){
    return items;
  }

  bool? push(int num){
    if(pila.length < longitud){
      pila.add(num);
      items = pila.length;
      return true;
    }else{
      return null;
    }
  }

  int? pop(){
    if(pila.isNotEmpty){
      int removed = pila.removeAt(0);
      items = pila.length;
      return removed;
    }else{
      return null;
    }
  }
}