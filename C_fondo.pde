class Fondo {
  PImage medieval;
  int medievalM;
  Fondo() {
    medievalM = -width;
    medieval = loadImage("fondo.jpg");
  }
  void dibujarF() {
    imageMode(CORNER);
    image(medieval, medievalM, 0);
    movimientoF();
  }
  void movimientoF() {
    medievalM = medievalM <0 ? medievalM : -width;
    medievalM ++;
  }
}
