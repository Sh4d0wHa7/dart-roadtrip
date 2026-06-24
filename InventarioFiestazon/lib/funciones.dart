import 'inventario.dart';
import 'variables.dart';
import 'dart:io';

void agregarInventario() {
  print("Ingrese el tipo de objeto a agregar (Mesa, Silla, CubreMantel, Sombrilla, Monja, Mantel, Mono):");
  String? tipoObjeto = stdin.readLineSync();
  print("Ingrese la cantidad a agregar:");
  int cantidad = int.parse(stdin.readLineSync() ?? '0');

  if(tipoObjeto == "Mesa") {
    print("Ingrese el tipo de mesa (Redondo, Rectangular):");
    String? tipoMesa = stdin.readLineSync();
    inventario[Mesa(tipoMesa!)]?.cantidad += cantidad;

  } else if (tipoObjeto == "Silla") {
    print("Ingrese la generación de la silla (1, 2, 3, 4, 5):");
    int generacion = int.parse(stdin.readLineSync() ?? '0'); 
    print("Ingrese el tipo de silla (Cromada, Plástica):");
    String? tipoSilla = stdin.readLineSync();
    inventario[Silla(generacion, tipoSilla!)]?.cantidad += cantidad;

  } else if (tipoObjeto == "CubreMantel") {
    print("Ingrese el color del cubremantel (Rojo, Azul):");
    String? color = stdin.readLineSync();
    inventario[CubreMantel(color!)]?.cantidad += cantidad;

  } else if (tipoObjeto == "Mantel") {
    print("Ingrese el tipo de mantel (Redondo, Rectangular):");
    String? tipoMantel = stdin.readLineSync();
    inventario[Mantel(tipoMantel!)]?.cantidad += cantidad;

  } else if (tipoObjeto == "Mono") {
    print("Ingrese el color del mono (Rojo, Azul):");
    String? color = stdin.readLineSync();
    inventario[Mono(color!)]?.cantidad += cantidad;

  } else{
    inventario[tipoObjeto]?.cantidad += cantidad;
  } 

  print("Se ha agregado $cantidad unidades de $tipoObjeto al inventario.");
}

void eliminarInventario() {
  print("Ingrese el tipo de objeto a eliminar (Mesa, Silla, CubreMantel, Sombrilla, Monja, Mantel, Mono):");
  String? tipoObjeto = stdin.readLineSync();
  print("Ingrese la cantidad a eliminar:");
  int cantidad = int.parse(stdin.readLineSync() ?? '0');

  if(tipoObjeto == "Mesa") {
    print("Ingrese el tipo de mesa (Redondo, Rectangular):");
    String? tipoMesa = stdin.readLineSync();
    inventario[Mesa(tipoMesa!)]?.cantidad -= cantidad;

  } else if (tipoObjeto == "Silla") {
    print("Ingrese la generación de la silla (1, 2, 3, 4, 5):");
    int generacion = int.parse(stdin.readLineSync() ?? '0'); 
    print("Ingrese el tipo de silla (Cromada, Plástica):");
    String? tipoSilla = stdin.readLineSync();
    inventario[Silla(generacion, tipoSilla!)]?.cantidad -= cantidad;

  } else if (tipoObjeto == "CubreMantel") {
    print("Ingrese el color del cubremantel (Rojo, Azul):");
    String? color = stdin.readLineSync();
    inventario[CubreMantel(color!)]?.cantidad -= cantidad;

  } else if (tipoObjeto == "Mantel") {
    print("Ingrese el tipo de mantel (Redondo, Rectangular):");
    String? tipoMantel = stdin.readLineSync();
    inventario[Mantel(tipoMantel!)]?.cantidad -= cantidad;

  } else if (tipoObjeto == "Mono") {
    print("Ingrese el color del mono (Rojo, Azul):");
    String? color = stdin.readLineSync();
    inventario[Mono(color!)]?.cantidad -= cantidad;

  } else{
    inventario[tipoObjeto]?.cantidad -= cantidad;
  } 

  print("Se ha eliminado $cantidad unidades de $tipoObjeto del inventario.");
}

void SolicitarSalidaInventario() {
  print("Ingrese el tipo de objeto a solicitar salida (Mesa, Silla, CubreMantel, Sombrilla, Monja, Mantel, Mono):");
  String? tipoObjeto = stdin.readLineSync();
  print("Ingrese la cantidad a solicitar salida:");
  int cantidad = int.parse(stdin.readLineSync() ?? '0');

  if(tipoObjeto == "Mesa") {
    print("Ingrese el tipo de mesa (Redondo, Rectangular):");
    String? tipoMesa = stdin.readLineSync();
    inventario[Mesa(tipoMesa!)]?.cantidad -= cantidad;

    if(inventario[Mesa(tipoMesa)]?.EstaLimpio== Sucio) 
      print("Algunas $tipoObjeto $tipoMesa estan sucias. Verifica estado del inventario antes de entregar la renta");
    inventario[Mesa(tipoMesa)]?.EstaLimpio = Sucio;

  } else if (tipoObjeto == "Silla") {
    print("Ingrese la generación de la silla (1, 2, 3, 4, 5):");
    int generacion = int.parse(stdin.readLineSync() ?? '0'); 
    print("Ingrese el tipo de silla (Cromada, Plástica):");
    String? tipoSilla = stdin.readLineSync();
    inventario[Silla(generacion, tipoSilla!)]?.cantidad -= cantidad;
    if(inventario[Silla(generacion, tipoSilla)]?.EstaLimpio== Sucio) 
      print("Alguna $tipoObjeto $tipoSilla de generacion $generacion estan sucias. Verifica estado del inventario antes de entregar la renta");
    inventario[Silla(generacion, tipoSilla)]?.EstaLimpio = Sucio;

  } else if (tipoObjeto == "CubreMantel") {
    print("Ingrese el color del cubremantel (Rojo, Azul):");
    String? color = stdin.readLineSync();
    inventario[CubreMantel(color!)]?.cantidad -= cantidad;
    if(inventario[CubreMantel(color)]?.EstaLimpio== Sucio) 
      print("Algunos $tipoObjeto $color estan sucios. Verifica estado del inventario antes de entregar la renta");
    inventario[CubreMantel(color)]?.EstaLimpio = Sucio;

  } else if (tipoObjeto == "Mantel") {
    print("Ingrese el tipo de mantel (Redondo, Rectangular):");
    String? tipoMantel = stdin.readLineSync();
    inventario[Mantel(tipoMantel!)]?.cantidad -= cantidad;
    if(inventario[Mantel(tipoMantel)]?.EstaLimpio== Sucio) 
      print("Algunos $tipoObjeto $tipoMantel estan sucios. Verifica estado del inventario antes de entregar la renta");
    inventario[Mantel(tipoMantel)]?.EstaLimpio = Sucio;

  } else if (tipoObjeto == "Mono") {
    print("Ingrese el color del mono (Rojo, Azul):");
    String? color = stdin.readLineSync();
    inventario[Mono(color!)]?.cantidad -= cantidad;
    if(inventario[Mono(color)]?.EstaLimpio== Sucio) 
      print("Algunos $tipoObjeto $color estan sucios. Verifica estado del inventario antes de entregar la renta");
    inventario[Mono(color)]?.EstaLimpio = Sucio;

  } else{
    inventario[tipoObjeto]?.cantidad -= cantidad;
    if(tipoObjeto == Monja && inventario[Monja]?.EstaLimpio== Sucio){
      print("Algunas $tipoObjeto estan sucias. Verifica estado del inventario antes de entregar la renta");
      inventario[tipoObjeto]?.EstaLimpio = Sucio;
    }
  } 

  print("Se ha solicitado la salida de $cantidad unidades de $tipoObjeto del inventario.");
}

void SolicitarIngresoInventario() {
  print("Ingrese el tipo de objeto a solicitar ingreso (Mesa, Silla, CubreMantel, Sombrilla, Monja, Mantel, Mono):");
  String? tipoObjeto = stdin.readLineSync();
  print("Ingrese la cantidad a solicitar ingreso:");
  int cantidad = int.parse(stdin.readLineSync() ?? '0');

  if(tipoObjeto == "Mesa") {
    print("Ingrese el tipo de mesa (Redondo, Rectangular):");
    String? tipoMesa = stdin.readLineSync();
    inventario[Mesa(tipoMesa!)]?.cantidad += cantidad;

  } else if (tipoObjeto == "Silla") {
    print("Ingrese la generación de la silla (1, 2, 3, 4, 5):");
    int generacion = int.parse(stdin.readLineSync() ?? '0'); 
    print("Ingrese el tipo de silla (Cromada, Plástica):");
    String? tipoSilla = stdin.readLineSync();
    inventario[Silla(generacion, tipoSilla!)]?.cantidad += cantidad;

  } else if (tipoObjeto == "CubreMantel") {
    print("Ingrese el color del cubremantel (Rojo, Azul):");
    String? color = stdin.readLineSync();
    inventario[CubreMantel(color!)]?.cantidad += cantidad;

  } else if (tipoObjeto == "Mantel") {
    print("Ingrese el tipo de mantel (Redondo, Rectangular):");
    String? tipoMantel = stdin.readLineSync();
    inventario[Mantel(tipoMantel!)]?.cantidad += cantidad;

  } else if (tipoObjeto == "Mono") {
    print("Ingrese el color del mono (Rojo, Azul):");
    String? color = stdin.readLineSync();
    inventario[Mono(color!)]?.cantidad += cantidad;
  } else{
    inventario[tipoObjeto]?.cantidad += cantidad;
  }
}

void LimpiarInventario() {
  print("Ingrese el tipo de objeto a limpiar (Mesa, Silla, CubreMantel, Sombrilla, Monja, Mantel, Mono):");
  String? tipoObjeto = stdin.readLineSync();

  if(tipoObjeto == "Mesa") {
    print("Ingrese el tipo de mesa (Redondo, Rectangular):");
    String? tipoMesa = stdin.readLineSync();
    inventario[Mesa(tipoMesa!)]?.EstaLimpio = Limpio;

  } else if (tipoObjeto == "Silla") {
    print("Ingrese la generación de la silla (1, 2, 3, 4, 5):");
    int generacion = int.parse(stdin.readLineSync() ?? '0'); 
    print("Ingrese el tipo de silla (Cromada, Plástica):");
    String? tipoSilla = stdin.readLineSync();
    inventario[Silla(generacion, tipoSilla!)]?.EstaLimpio = Limpio;

  } else if (tipoObjeto == "CubreMantel") {
    print("Ingrese el color del cubremantel (Rojo, Azul):");
    String? color = stdin.readLineSync();
    inventario[CubreMantel(color!)]?.EstaLimpio = Limpio;

  } else if (tipoObjeto == "Mantel") {
    print("Ingrese el tipo de mantel (Redondo, Rectangular):");
    String? tipoMantel = stdin.readLineSync();
    inventario[Mantel(tipoMantel!)]?.EstaLimpio = Limpio;

  } else if (tipoObjeto == "Mono") {
    print("Ingrese el color del mono (Rojo, Azul):");
    String? color = stdin.readLineSync();
    inventario[Mono(color!)]?.EstaLimpio = Limpio;
  } else{
    inventario[tipoObjeto]?.EstaLimpio = Limpio;
  }

  print("Se ha limpiado el inventario de $tipoObjeto.");
}