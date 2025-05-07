import 'package:parametros_posicionales/parametros_posicionales.dart' as parametros_posicionales;

void mostrarInformacionPosicional(String nombre, int edad, [String? ciudad = "Desconocida"]) { // params posicionales
  print("Nombre: $nombre");
  print("Edad: $edad");
  print("Ciudad: ${ciudad ?? "No especificada"}");
}

void mostrarInformacionNombrado(String nombre, int edad, {bool casado = false, String? profesion}) { //params nombrados
  print("Nombre: $nombre");
  print("Edad: $edad");
  print("Estado civil: ${casado ? "Casado" : "Soltero"}");
  print("Profesion: ${profesion ?? "No especificada"}");
}

void main() {
    print("=== Usando parámetros opcionales posicionales ===");
  mostrarInformacionPosicional("Miguel", 25);
  mostrarInformacionPosicional("Ana", 24, "Morelia");

  print("\n=== Usando parámetros opcionales nombrados ===");
  mostrarInformacionNombrado("Luis", 26, casado: true, profesion: "Licenciado");
  mostrarInformacionNombrado("Maria", 96, casado: false);
}
