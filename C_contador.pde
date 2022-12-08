class Contador {
  int tiempo, posx, posy, puntos, posxn, posyn;
  Contador (int tiempo, int posx, int posy) {
    this.tiempo = tiempo;
    this.posx = posx;
    this.posy = posy;
    posxn = 60;
    posyn = 40;
  }
  void dibujarC() {
    textSize(20);
    fill(0);
    text("Tiempo:"+ tiempo, posx, posy);
    if (frameCount%60==0) {
      tiempo++;
      if (tiempo == 30) {
        mainclass.estado = 4;
      }
    }
    fill (0);
    text("Puntaje:" + puntos, posxn, posyn);
    if (puntos == 5) {
      mainclass.estado = 3;
    }
  }
}
