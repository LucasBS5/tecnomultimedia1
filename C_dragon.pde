class Dragon {
  PImage dragon;
  float px, py;
  Dragon(float py) {
    dragon = loadImage("dragonpx.png");
    this.py = py;
  }

  void dibujarD() {
    image(dragon, 400, py, 100, 100);
    volarD();
  }
  void volarD() {
    if (key == 'w' || key == 'W') {
      py-=1;
    }
    if (key == 's' || key == 'S') {
      py+=1;
    }
  }
}
