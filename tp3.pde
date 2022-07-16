//TRABAJO PRACTICO Nro.3, JUEGO INTERACTIVO LIBRE - TECNOLOGÍA MULTIMEDIAL.
//DOCENTE: BUGIOLACHI JOSÉ LUIS.
//ALUMNO: BUSNELLI LUCAS.
//COMISIÓN: 1.
//VIDEO Youtube:https://www.youtube.com/watch?v=DiICRcrbTF8&ab_channel=LucasBusnelli
int cant;
int separa;
int xPlayer;
float y;
float vel;
float timer;
int limite;
void setup() {
  size(800, 600);
  cant=10;
  separa=100;
  y = 0;
  vel=0.2;
  xPlayer = 375;
  limite=1110;
  noCursor();
}
void draw() {
  background(0);
  println(mouseX, mouseY);
  if (estadoJuego==0) {
    pantallas(txt[0], width/2, height/2);
  } 
  if (estadoJuego==1) {
    pantallas (txt[1], 400, 100);
  } else if (estadoJuego==2) {
    jugando();
    fill(188, 51, 51);
    rect (xPlayer, 470, 30, 30);
  }
  if (estadoJuego>2) {
    estadoJuego=2;
  }
  if (timer==limite) {
    estadoJuego=3;
    pantallas(txt[2], 400, 100);
  }
  if (y>500) {
    y=-80;
  }
}
void keyPressed() {
  if (key== ' ') { 
    estadoJuego++;
  }
  if (key == 'a' || key == 'A') { //IZQUIERDA.
    xPlayer-=10;
  } else if (key=='d' || key =='D') { //DERECHA.
    xPlayer+=10;
  }
}
