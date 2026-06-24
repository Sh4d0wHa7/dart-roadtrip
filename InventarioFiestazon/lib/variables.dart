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

//Productos No complejos
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

  objeto(this.EstaLimpio, this.cantidad, this.FechaIngreso);
}