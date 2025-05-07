import 'package:future_async/future_async.dart' as future_async;

Future <String> descargarArchivo() async{
  print("Iniciando la descarga...");

  //simulamos la espera de 3 segundos
  await Future.delayed(Duration(seconds: 3));

  return "Archivo descargado correctamente.";
}

void main() async{
  print("Programa iniciado");
  
  String resultado = await descargarArchivo();
  print(resultado);

  print("Programa finalizado");
}
