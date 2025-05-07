import 'package:algorritmo_lista/algorritmo_lista.dart' as algorritmo_lista;
import 'dart:io';

void main() {
 print("Intruduzca una lista de numeros separados por comas, eg: 1,1,10,20,50,20: ");
 String ? entrada = stdin.readLineSync();

 if(entrada != null && entrada.isNotEmpty){
  List<int> numeros = entrada.split(',').map(int.parse).toList();

  int cantidadUnicos = contarElementosUnicos(numeros);
  print("La cantidad de elementos unicos que contiene la lista es: $cantidadUnicos");
 }else{
  print("Por favor, intruduce una lista");
 }
}

int contarElementosUnicos(List<int> lista){
  Set<int> conjuntosUnicos = Set<int>.from(lista); //Set solo toma valores unicos y se pasa a una lista de enteros
  return conjuntosUnicos.length;
}
