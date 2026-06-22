import 'dart:io';

class Gasto{
  String? nombre;
  double? costo;
  DateTime? fecha;

  Gasto({this.nombre, this.costo, this.fecha});
}

class Database{
  List<Gasto> basedeGastos = [];
  double totalGastado = 0;
  Gasto mayorGasto = Gasto(costo: 0);
  Gasto menorGasto = Gasto(costo: double.infinity) ;
}

Database db = Database();

void agregarGasto(){
  stdout.write("Concepto del gasto: ");
  String UserConcept = stdin.readLineSync() ?? "Sin concepto";
  stdout.write("Costo del gasto: ");
  double UserCost = double.parse(stdin.readLineSync()!);

  Gasto nuevoGasto = Gasto(nombre: UserConcept, costo: UserCost, fecha: DateTime.now());

  db.basedeGastos.add(nuevoGasto);
  db.totalGastado += nuevoGasto.costo!;
  db.mayorGasto = (db.mayorGasto.costo! < nuevoGasto.costo!) ? nuevoGasto : db.mayorGasto;
  db.menorGasto = (db.menorGasto.costo! > nuevoGasto.costo!) ? nuevoGasto : db.menorGasto;

  print("\nGasto agregado exitosamente.\n");
}

void eliminarGasto(){
  print("Concepto del gasto a eliminar: ");
  String UserConcept = stdin.readLineSync() ?? "Sin concepto";

  Gasto? gastoAEliminar;
  for (var i in db.basedeGastos) {
    if (i.nombre == UserConcept) {
      gastoAEliminar = i;
      break;
    }
  }

  if (gastoAEliminar != null) {
    db.basedeGastos.remove(gastoAEliminar);
    db.totalGastado -= gastoAEliminar.costo!;
    print("\nGasto eliminado exitosamente.\n");
  } else {
    print("\nGasto no encontrado.\n");
  }
}

void consultarUsuario(){
  bool userOn = true;
  while (userOn) {
    stdout.write("Operación a realizar: ");
    String? operacion = stdin.readLineSync();
    switch (operacion) {
      case "1": //Agregar gasto
        agregarGasto();
        break;
      case "2": //Calcular total gastado
        print("\nTotal gastado: ${db.totalGastado}\n");
        break;
      case "3": //Gasto mayor
        print('''\nConcepto: ${db.mayorGasto.nombre}, Costo: ${db.mayorGasto.costo}\n 
                  Fecha: ${db.mayorGasto.fecha}\n''');
        break;
      case "4": //Gasto menor
        print('''\nConcepto: ${db.menorGasto.nombre}, Costo: ${db.menorGasto.costo}\n 
                  Fecha: ${db.menorGasto.fecha}\n''');
        break;
      case "5": //Eliminar gasto
        eliminarGasto();
        break;
      case "6": //Consultar todos los gastos
        print("\nLista de gastos: \n");
        for (var i in db.basedeGastos) {
          print('''\nConcepto: ${i.nombre}, Costo: ${i.costo}\n 
                    Fecha: ${i.fecha}\n''');
        }
        break;
      case "7": //Consultar menu
        desplegarMenu();
        break;
      case "8": //Salir
        print("\nSaliendo del programa. ¡Hasta luego!\n");
        userOn = false;
        break;
      default: //Operación no válida
        print("Operación no válida. Intente de nuevo.");
        break;
    }
  }
} 

void desplegarMenu(){
  print ('===== GESTOR DE GASTOS =====\n');
  print("Inserte 1 para agregar un gasto");
  print("Inserte 2 para ver total final gastado");
  print("Inserte 3 para ver el gasto mayor");
  print("Inserte 4 para ver el gasto menor");
  print("Inserte 5 para eliminar un gasto");
  print("Inserte 6 para consultar todos los gastos");
  print("Inserte 7 para consultar menu\n");
  print("Inserte 8 para salir\n");
}

void main(){
  desplegarMenu();
  consultarUsuario();
}