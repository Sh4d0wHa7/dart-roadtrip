import 'lib/user_acciones.dart';
import 'dart:io';

void main() {
  Inicializar();
  while (true) {
    DesplegarMenu();
    String? opcion = stdin.readLineSync();
    if (opcion != null) 
      UserAccion(opcion);
    else 
      print("Opción inválida. Por favor, seleccione una opción válida.");
  }
}
