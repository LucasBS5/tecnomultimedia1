//TRABAJO PRACTICO Nro.4, PROGRAMANDO CON OBJETOS - TECNOLOGÍA MULTIMEDIAL 1.
//DOCENTE: BUGIOLACHI JOSÉ LUIS.
//ALUMNO: BUSNELLI LUCAS.
//COMISIÓN: 1.
//VIDEO SOBRE EL CÓDIGO: https://youtu.be/c6jvCJQHkW0

Main mainclass;
void setup() {
  size(700, 600);
  mainclass = new Main();
}

void draw() {
  background(118,96,118);
  mainclass.dibujar();
}

void keyPressed(){
mainclass.volar();
}
