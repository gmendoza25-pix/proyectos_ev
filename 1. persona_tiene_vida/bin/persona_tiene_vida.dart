import 'package:persona_tiene_vida/persona_tiene_vida.dart' as persona_tiene_vida;

abstract class Vivo{
  void respirar();
  void moverse();
  void hablar();
}

class Persona implements Vivo{
  final String nombre;

  Persona(this.nombre);

  @override
  void respirar(){
    print('$nombre esta respirando...');
  }

  @override 
  moverse(){
    print('$nombre esta moviendose...');
  }

  @override
  hablar(){
    print('$nombre esta hablando...');
  }
}

void main(List<String> arguments) {
  //print('Hello world: ${persona_tiene_vida.calculate()}!');
  Persona persona = Persona('Miguel');
  persona.respirar();
  persona.moverse();
  persona.hablar();
}
