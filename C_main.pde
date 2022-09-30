class Main {
  Fondo f;
  Dragon d;
  Main() {
    f = new Fondo();
    d = new Dragon(400, 200);
  }

  void dibujar() {
    f.dibujarF();
    d.dibujarD();
  }
  void volar() {
    d.volarD();
  }
}
