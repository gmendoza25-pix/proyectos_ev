import 'package:encapsulamiento/encapsulamiento.dart' as encapsulamiento;

class Persona{
  String _nombre;
  int _edad;

  Persona(this._nombre, this._edad);

  String get nombre => _nombre; //getter

  set nombre(String nombreNuevo){ //setter
    if(nombreNuevo.isNotEmpty){
          _nombre = nombreNuevo;
    }else{
      print('El nombre no puede estar vacio');
    }
  }

  int get edad => _edad; //getter

  set edad(int edadNueva){
    if(edadNueva > 0){
      _edad = edadNueva;
    }else{
      print("La nueva edad no puede ser menor a cero o negativa");
    }
  }

  void mostrarPersona(){
    print("Nombre:  $_nombre");
    print("Edad: $_edad");
  }

}

void main(List<String> arguments) {
  //print('Hello world: ${encapsulamiento.calculate()}!');
  Persona persona = Persona("Gema", 24);
  persona.mostrarPersona();
  print("\n");

  // Cambio de propiedades
  persona.nombre = "Daniela";
  persona.edad = 0; // error

  persona.mostrarPersona();
}
