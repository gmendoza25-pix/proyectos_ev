import 'package:null_safty/null_safty.dart' as null_safty;

class Usuario {
  // Variable nullable (puede ser nula)
  String? _nombre;
  int? _edad;

  // Constructor
  Usuario({String? nombre, int? edad}) {
    _nombre = nombre;
    _edad = edad;
  }

  // Método para establecer el nombre (acepta nulo)
  void establecerNombre(String? nombre) {
    _nombre = nombre;
  }

  // Método que retorna un valor no nulo
  String obtenerNombreSeguro() {
    // El operador ?? asegura que siempre haya un valor no nulo
    return _nombre ?? "Sin nombre";
  }

  // Método que utiliza el operador ! para asegurar que no sea nulo
  void mostrarEdad() {
    if (_edad != null) {
      print("Edad del usuario: ${_edad!}");
    } else {
      print("Edad no especificada");
    }
  }
}

void main() {
  // Creando usuario sin valores iniciales (null safe)
  Usuario usuario1 = Usuario();
  print("Usuario 1:");
  print("Nombre: ${usuario1.obtenerNombreSeguro()}");
  usuario1.mostrarEdad();
  print("\n");

  usuario1.establecerNombre("Miguel");
  usuario1.mostrarEdad(); // Edad no especificada
  print("Nombre actualizado: ${usuario1.obtenerNombreSeguro()}");
  print("\n");

  Usuario usuario2 = Usuario(nombre: "Ana", edad: 30);
  print("Usuario 2:");
  print("Nombre: ${usuario2.obtenerNombreSeguro()}");
  usuario2.mostrarEdad();
}

