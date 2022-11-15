class Main {
  Fondo f;
  Dragon d;
  Contador c;
  //Estados e;
  Main() {
    f = new Fondo();
    d = new Dragon(500, 100);
    c = new Contador();
    //e = new Estados();
  }
  void dibujar() {
    f.dibujarF();
    d.dibujarD();
    c.dibujarC();
    //e.pantallas();
  }
  void volar(int tecla) {
    d.volarD(tecla);
    d.limitepantalla();
  }
  void pasar(int tec) {
    //e.pasarEstados(tec);
  }
}
