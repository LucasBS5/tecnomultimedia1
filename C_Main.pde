class Main {
  int estado;
  float distance;
  PImage pantalla1, pantalla2;
  Personas [] p = new Personas [5];
  Dragon d;
  Fondo f;
  Contador c;

  Main() {
    estado = 0;
    pantalla1 = loadImage("inst.jpg");
    pantalla2 = loadImage("inicio.jpg");
    d = new Dragon(500, 100);
    f = new Fondo();
    c = new Contador(0, 60, 20);
    for (int i = 0; i < p.length; i++) {
      p[i] = new Personas(40 + i*130, height-25, 1.5);
    }
  }
  void pantallas() {
    if (estado == 0) {
      image(pantalla1, 0, 0);
    }
    if (estado == 1) {
      image(pantalla2, 0, 0);
    }
    if (estado == 2) {
      f.dibujarF();
      d.dibujarD();
      c.dibujarC();
      lanzarA(keyCode);
      colision();
      for (int i = 0; i< p.length; i++) {
        p[i].dibujarP();
        p[i].personaMueve();
      }
    }
    if (estado == 3) {
      background(0);
      fill(00, 255, 0);
      textSize(30);
      text("Ganaste!!!", width/2, height/2);
      textSize(20);
      text("Pulsa 'R' para volver a jugar", 160, 580);
      if (key == 'r' || key == 'R') {
        estado = 2;
        c.tiempo = 0;
        c.puntos = 0;
        d.px = 500;
        d.py = 100;
        d.ax = d.px;
        d.ay = d.py;
      }
    }
    if (estado == 4) {
      background(0);
      fill(255, 0, 0);
      textSize(30);
      text("Perdiste :(", width/2, height/2);
      textSize(20);
      text("Pulsa 'R' para volver a jugar", 160, 580);
      if (key == 'r' || key == 'R') {
        estado = 2;
        c.tiempo = 0;
        c.puntos = 0;
        d.px = 500;
        d.py = 100;
        d.ax = d.px;
        d.ay = d.py;
      }
    }
  }
  void colision() {
    for (int i = 0; i < p.length; i++) {
      float distance = dist(p[i].pxp, p[i].pyp, d.ax, d.ay);
      if (distance < 30) {
        p[i].pyp = -100;
        c.puntos++;
      }
      if (key == 'r' || key == 'R') {
        p[i].pyp = height-25;
      }
    }
  }
  void pasarEstados (int tecla) {
    textAlign(CENTER);
    fill(240, 216, 131);
    if (estado == 0) {
      if (tecla == ' ') {
        estado=1;
      }
    }
    if (estado == 1) {
      if (tecla == 'x' || tecla == 'X') {
        estado = 2;
      }
    }
  }
  void volar(int tecla) {
    d.volarD(tecla);
    d.limitepantalla();
  }
  void lanzarA(int tecla) {
    d.lanzarAtac(tecla);
  }
}
