class Dragon {
  PImage dragon, ataque;
  int px, py, ay, ax, tam;
  boolean lanzado;
  Dragon(int px, int py) {
    dragon = loadImage("dragonpx.png");
    ataque = loadImage("fball.png");
    dragon.resize(100, 100);
    ataque.resize(20, 20);
    this.px = px;
    this.py = py;
  }
  void dibujarD() {
    imageMode(CENTER);
    image(dragon, px, py);
  }
  void volarD(int tecla) {
    if (tecla == 'w' || tecla == 'W') {
      py-= 5;
    }
    if (tecla == 's' || tecla == 'S') {
      py+= 5;
    }
    if (tecla == 'a' || tecla == 'A') {
      px-= 5;
    }
    if (tecla == 'd' || tecla == 'D') {
      px+= 5;
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
  void lanzarAtac(int tecla) {
    if (tecla == ' ') {
      lanzado = true;
      dibujarAtac();
      ay += 8;
      ax = px;
    } else if (ay > 600) {
      ay = py;
      ax = px;
    }
  }
  void dibujarAtac() {
    image(ataque, ax, ay);
  }
}
