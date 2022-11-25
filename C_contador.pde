class Contador {
  int tiempo, puntos, posx, posy, posxn, posyn;
  Contador (int tiempo, int posx, int posy) {
    this.tiempo = tiempo;
    this.posx = posx;
    this.posy = posy;
    posxn = 60;
    posyn = 40;
  }
  void dibujarT() {
    textSize(20);
    fill(0);
    text("Tiempo:"+ tiempo, posx, posy);
    if (frameCount%60==0) {
      tiempo++;
      if (tiempo == 30) {
        mainclass.estado = 4;
      }
    }
    text("Puntaje:"+ puntos, posxn, posyn);
  }
}
