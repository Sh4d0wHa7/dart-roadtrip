/*
Este archivo es el punto de entrada de la aplicación. 
Aquí se inicializa la aplicación y se configura la base de datos. 
*/
import 'variables.dart';

Map<dynamic, objeto> inventario = {};

// Función para inicializar la base de datos
void SetDB() {
  inventario = {}  ;
  
  //Agregar inventario inicial
  //mesas
  inventario[Mesa(Redondo)] = objeto(Limpio, 15, DateTime.now());
  inventario[Mesa(Rectangular)] = objeto(Limpio, 20, DateTime.now());

  //sillas
  inventario[Silla(GenI, SillaCromada)] = objeto(Limpio, 60, DateTime.now());
  inventario[Silla(GenII, SillaCromada)] = objeto(Limpio, 40, DateTime.now());
  inventario[Silla(GenIII, SillaCromada)] = objeto(Limpio, 40, DateTime.now());
  inventario[Silla(GenIV, SillaCromada)] = objeto(Limpio, 60, DateTime.now());
  inventario[Silla(GenV, SillaCromada)] = objeto(Limpio, 50, DateTime.now());
  inventario[Silla(GenV, SillaPlastica)] = objeto(Limpio, 50, DateTime.now());

  //cubremanteles
  inventario[CubreMantel(Rojo)] = objeto(Limpio, 15, DateTime.now());
  inventario[CubreMantel(Azul)] = objeto(Limpio, 15, DateTime.now());

  //no complejos
  inventario[Sombrilla] = objeto(Limpio, 15, DateTime.now());
  inventario[Monja] = objeto(Limpio, 250, DateTime.now());

  //manteles
  inventario[Mantel(Redondo)] = objeto(Limpio, 15, DateTime.now());
  inventario[Mantel(Rectangular)] = objeto(Limpio, 15, DateTime.now());

  //monos
  inventario[Mono(Rojo)] = objeto(Limpio, 150, DateTime.now());
  inventario[Mono(Azul)] = objeto(Limpio, 150, DateTime.now());
}