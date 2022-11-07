//TRABAJO PRACTICO Nro.5 - FINAL, AVANZANDO CON POO - TECNOLOGÍA MULTIMEDIAL 1.
//DOCENTE: BUGIOLACHI, JOSÉ LUIS.
//ALUMNO: BUSNELLI, LUCAS.
//COMISIÓN: 1.
//VIDEO EXPLICATIVO:

Main mainclass;
void setup() {
  size(700, 600);
  mainclass = new Main();
}

void draw() {
  background(118, 96, 118);
  mainclass.dibujar();
}

void keyPressed() {
  mainclass.keyPressed();
}
void mousePressed(){
mainclass.mousePressed();
}
