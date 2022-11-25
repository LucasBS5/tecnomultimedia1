//TRABAJO PRACTICO Nro.5 - FINAL, AVANZANDO CON POO - TECNOLOGÍA MULTIMEDIAL 1.
//ALUMNO: BUSNELLI, LUCAS.
//LEGAJO: 91503/0
//DOCENTE: BUGIOLACHI, JOSÉ LUIS.
//COMISIÓN: 1.
//VIDEO EXPLICATIVO: https://youtu.be/6sJ6VdBZUQM

import processing.sound.*;
SoundFile musicaF;
//SoundFile sonidodragon;

Main mainclass;
void setup() {
  size(700, 600);
  mainclass = new Main();
  musicaF = new SoundFile(this, "musica.wav");
  musicaF.loop();
  musicaF.amp(0.1);
}

void draw() {
  background(118, 96, 118);
  mainclass.pantallas();
  mainclass.lanzarA(keyCode);
}

void keyPressed() {
  mainclass.volar(keyCode);
  mainclass.pasarEstados(keyCode);
}
