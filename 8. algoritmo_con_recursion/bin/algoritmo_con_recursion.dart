import 'package:algoritmo_con_recursion/algoritmo_con_recursion.dart' as algoritmo_con_recursion;

int recursion(int n){
  print(n);
  if(n == 1){
    return 1;
  }else if(n % 2 == 0){
    return recursion(n ~/ 2);
  }else{
   return recursion(n * 3 + 1);
  }
}
void main(List<String> arguments) {
  int numero = 8;
  print("Algoritmo 3n + 1 para el numero: $numero");
  recursion(numero);
}
