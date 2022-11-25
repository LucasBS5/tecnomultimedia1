class Dragon {
  PImage dragon, dragonF;
  int px, py, ay, ax, tam;
  boolean lanzado;
  Dragon(int px, int py) {
    dragon = loadImage("dragonpx.png");
    dragonF = loadImage("dragonpx2.png");
    dragon.resize(100, 100);
    dragonF.resize(100, 100);
    this.px = px;
    this.py = py;
    ax = 350;
    ay = -20;
    tam = 15;
  }
  void dibujarD() {
    image(dragon, px, py);
  }
  void volarD(int tecla) {
    if (tecla == 'w' || tecla == 'W') {
      py-= 3;
    }
    if (tecla == 's' || tecla == 'S') {
      py+= 3;
    }
    if (tecla == 'a' || tecla == 'A') {
      px-= 3;
    }
    if (tecla == 'd' || tecla == 'D') {
      px+= 3;
    }
  }
  void limitepantalla() {
    if (px <= -20) {
      px = 5;
    }
    if (px >= 600) {
      px = 600;
    }
    if (py >= 370) {
      py = 370;
    }
    if (py <= -30 ) {
      py= -30;
    }
  }
  void lanzarAtc(int tecla) {
    if (tecla == ' ') {
      lanzado = true;
      if (lanzado && ay >= -20) {
        ay += 10;
      } else {
        lanzado = false;
      }
      if (ay >= 700) {
        ay=0;
      }
    }
  }
  void dibujarA() {
    fill (240, 60, 17);
    noStroke();
    ellipse(ax, ay, tam, tam);
  }
}
