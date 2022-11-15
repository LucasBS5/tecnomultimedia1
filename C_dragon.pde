class Dragon {
  PImage dragon;
  float px, py;
  Dragon(float px, float py) {
    dragon = loadImage("dragonpx.png");
    this.px = px;
    this.py = py;
  }

  void dibujarD() {
    image(dragon, px, py, 100, 100);
  }
  void volarD(int teclas) {
    if (teclas == 'w' || teclas == 'W') {
      py-=10;
    }
    if (teclas == 's' || teclas == 'S') {
      py+=10;
    }
    if (teclas == 'a' || teclas == 'A') {
      px-=10;
    }
    if (teclas == 'd' || teclas == 'D') {
      px+=10;
    }
  }
  void limitepantalla() {
    if (px <= -20) {
      px = 5;
    }
    if (px >= 600) {
      px = 600;
    }
    if (py >= 500) {
      py=500;
    }
  }
}
