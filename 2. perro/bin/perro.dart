import 'package:perro/perro.dart' as perro;

abstract class Animal{
  void comer();
  void haceSonido();
  void moverse();
}

class Perro extends Animal{
  // propiedades del Perro
  final String nombre;
  final int anios;
  final String genero;
  final String tamanio;

  Perro({
    required this.nombre,
    required this.anios,
    required this.genero,
    required this.tamanio,
  });

  @override
  void comer(){
    print('$nombre esta comiendo croquetas');
  }

  @override
  void haceSonido(){
    print('!Guau Guau!');
  }

  @override
  void moverse(){
    print('$nombre esta moviendo su cola');
  }

  void mostrarPerro(){
    print('Nombre: $nombre');
    print('Años: $anios');
    print('Género: $genero');
    print('Tamaño: $tamanio');
  }

}
void main(List<String> arguments) {
  //print('Hello world: ${perro.calculate()}!');
  Perro miPerrito = Perro(
    nombre: 'Cecilia',
    anios: 5,
    genero: 'Hembra',
    tamanio: 'Mediano',
  );

  miPerrito.mostrarPerro();
  miPerrito.comer();
  miPerrito.haceSonido();
  miPerrito.moverse();
}
