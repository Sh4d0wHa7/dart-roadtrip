/*
Este archivo es el punto de entrada de la aplicación. 
Aquí se inicializa la aplicación y se configura la base de datos. 
*/
const bool Limpio = true;
const bool Sucio = false;

// Tipos de sillas
const String SillaPlastica = "Silla Plástica";
const String SillaCromada = "Silla Cromada";

// Generaciones de sillas
const int GenI = 1;
const int GenII = 2;
const int GenIII = 3;
const int GenIV = 4;
const int GenV = 5;

// Tipos de mesas
const String Redondo = "Redondo";
const String Rectangular = "Rectangular";

// Colores de cubremanteles y monos
const String Rojo = "Rojo";
const String Azul = "Azul";

//Otros productos no complejos
const String Sombrilla = "Sombrilla";
const String Monja = "Monja";

//Productos complejos
class Silla{
  int generacion;
  String TipoSilla = "";

  Silla(this.generacion, this.TipoSilla);
}

class Mesa{
  String TipoMesa = "";

  Mesa(this.TipoMesa);
}

class Mantel{
  String TipoMantel = "";

  Mantel(this.TipoMantel);
}

class CubreMantel{
  String Color = "";

  CubreMantel(this.Color);
}

class Mono{
  String Color = "";

  Mono(this.Color);
}

class objeto {
  bool EstaLimpio = Limpio;
  int cantidad = 0;
  DateTime FechaIngreso;
  var type;

  objeto(this.EstaLimpio, this.cantidad, this.FechaIngreso, this.type);
}

List <objeto> inventario = [];

// Función para inicializar la base de datos
void SetDB() {
  inventario = [];
  
  //Agregar inventario inicial
  //mesas
  inventario.add(objeto(Limpio, 15, DateTime.now(), Mesa(Redondo)));
  inventario.add(objeto(Limpio, 20, DateTime.now(), Mesa(Rectangular)));

  //sillas
  inventario.add(objeto(Limpio, 60, DateTime.now(), Silla(GenI, SillaCromada)));
  inventario.add(objeto(Limpio, 40, DateTime.now(), Silla(GenII, SillaCromada)));
  inventario.add(objeto(Limpio, 40, DateTime.now(), Silla(GenIII, SillaCromada)));
  inventario.add(objeto(Limpio, 60, DateTime.now(), Silla(GenIV, SillaCromada)));
  inventario.add(objeto(Limpio, 50, DateTime.now(), Silla(GenV, SillaCromada)));
  inventario.add(objeto(Limpio, 50, DateTime.now(), Silla(GenV, SillaPlastica)));

  //cubremanteles
  inventario.add(objeto(Limpio, 15, DateTime.now(), CubreMantel(Rojo)));
  inventario.add(objeto(Limpio, 15, DateTime.now(), CubreMantel(Azul)));
  
  //no complejos
  inventario.add(objeto(Limpio, 15, DateTime.now(), Sombrilla));
  inventario.add(objeto(Limpio, 250, DateTime.now(), Monja));

  //manteles
  inventario.add(objeto(Limpio, 15, DateTime.now(), Mantel(Redondo)));
  inventario.add(objeto(Limpio, 15, DateTime.now(), Mantel(Rectangular)));

  //monos
  inventario.add(objeto(Limpio, 150, DateTime.now(), Mono(Rojo)));
  inventario.add(objeto(Limpio, 150, DateTime.now(), Mono(Azul)));
}