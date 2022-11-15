class Contador {
  int tiempo = 0;
  void dibujarC() {
    textSize(20);
    fill(0, 0, 0);
    text("Puntaje:"+ tiempo, 3, 20);
    if (frameCount%60==0) {
      tiempo++;
    }
  }
}
