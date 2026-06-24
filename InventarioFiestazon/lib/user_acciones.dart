import 'funciones.dart';
import 'inventario.dart';


void UserAccion(String OpcionUser) {
  switch (OpcionUser) {
    case "1":
      agregarInventario();
      break;
    case "2" :
      eliminarInventario();
      break;
    case "3":
      SolicitarSalidaInventario();
      break;
    case "4":
      SolicitarIngresoInventario();
      break;
    case "5":
      LimpiarInventario();
      break;
    case "6":
      print("\nSaliendo del sistema...");
      break;
    default:
      print("Opción inválida. Por favor, seleccione una opción válida.");
  }
}

void DesplegarMenu() {
  print ("\nSistema de inventario de Fiestazon\n");
  print ("Seleccione una opción:");
  print ("Ingrese 1 para agregar nuevo inventario");
  print ("Ingrese 2 para solicitar salida de inventario");
  print ("Ingrese 3 para solicitar ingreso de inventario");
  print ("Ingrese 4 para eliminar inventario");
  print ("Ingrese 5 para limpiar inventario");
  print ("Ingrese 6 para salir del sistema");
  
  print ("Ingrese su opción: ");
}

void Inicializar() {
  SetDB();
}
