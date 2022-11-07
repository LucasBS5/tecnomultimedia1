class Main {
  Fondo f;
  Dragon d;
  Estados e;
  Main() {
    f = new Fondo();
    d = new Dragon(200);
    e = new Estados(0);
  }
  void dibujar() {
    f.dibujarF();
    d.dibujarD();
  }
  void keyPressed() {
    d.volarD();
  }
  void mousePressed(){
  e.sumar();
  }
}
