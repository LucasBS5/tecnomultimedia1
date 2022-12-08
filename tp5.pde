//TRABAJO PRACTICO Nro.5 - FINAL, AVANZANDO CON POO - TECNOLOGÍA MULTIMEDIAL 1.
//DOCENTE: BUGIOLACHI, JOSÉ LUIS.
//ALUMNO: BUSNELLI, LUCAS.
//COMISIÓN: 1.
//VIDEO EXPLICATIVO: https://www.youtube.com/watch?v=9suyec6jxms&ab_channel=LucasBusnelli

/*import processing.sound.*;
 SoundFile musicaFondo;*/

Main mainclass;
void setup() {
  size(700, 600);
  mainclass = new Main();
  /*musicaFondo = new SoundFile(this, "musica.mp3");
   musicaFondo.loop();*/
}

void draw() {
  //println(mouseX, mouseY);
  background(118, 96, 118);
  mainclass.dibujar();
}

void keyPressed() {
  mainclass.volar(keyCode);
  mainclass.pasar(keyCode);
}
