import 'package:calculadora/calculadora.dart' as calculadora;

class Complejo {
  double real;
  double imaginario;

  Complejo(this.real, this.imaginario);

  // Suma
  Complejo operator +(Complejo otro) =>
      Complejo(real + otro.real, imaginario + otro.imaginario);
  
  // Resta
  Complejo operator -(Complejo otro) =>
      Complejo(real - otro.real, imaginario - otro.imaginario);

  // Multiplicación
  Complejo operator *(Complejo otro) => Complejo(
        (real * otro.real) - (imaginario * otro.imaginario),
        (real * otro.imaginario) + (imaginario * otro.real),
      );

  // División
  Complejo operator /(Complejo otro) {
    double denominador =
        (otro.real * otro.real) + (otro.imaginario * otro.imaginario);
    return Complejo(
      ((real * otro.real) + (imaginario * otro.imaginario)) / denominador,
      ((imaginario * otro.real) - (real * otro.imaginario)) / denominador,
    );
  }

  // Conjugar
  Complejo conjugado() => Complejo(real, -imaginario);

  @override
  String toString() => "$real ${imaginario >= 0 ? '+' : '-'} ${imaginario.abs()}i";
}

void main() {
  Complejo a = Complejo(3, 4);
  Complejo b = Complejo(1, -2);

  print("A: $a");
  print("B: $b\n");

  print("Suma: ${a + b}");
  print("Resta: ${a - b}");
  print("Multiplicación: ${a * b}");
  print("División: ${a / b}");
  print("Conjugado de A: ${a.conjugado()}");
}

