import 'package:constructores_nombrados/constructores_nombrados.dart' as constructores_nombrados;

class Barbie{
  String nombre;
  String estilo;
  String colorCabello;
  String colorTraje;

    Barbie(
      this.nombre,
      this.estilo,
      this.colorCabello,
      this.colorTraje,
    );

    Barbie.sirena(this.nombre)
      : estilo = 'Sirena',
      colorCabello = 'Azul',
      colorTraje = 'Rosa con azul';

    Barbie.hada(this.nombre)
      : estilo = 'Hada',
      colorCabello = 'Morado',
      colorTraje = 'Rosa y Verde';

    void mostrarBarbie(){
      print('Nombre Barbie: $nombre');
      print('Estilo: $estilo');
      print('Color de cabello: $colorCabello');
      print('Color de traje: $colorTraje');
    }
  }

void main(List<String> arguments) {
  //print('Hello world: ${constructores_nombrados.calculate()}!');
  Barbie barbieFarytopia = Barbie.hada('Elina');
  barbieFarytopia.mostrarBarbie();

  print('\n');

  Barbie barbieMermaidia = Barbie.sirena('Nori');
  barbieMermaidia.mostrarBarbie();
}
