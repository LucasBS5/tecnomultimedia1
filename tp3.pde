//TRABAJO PRACTICO Nro.3, JUEGO INTERACTIVO LIBRE - TECNOLOGÍA MULTIMEDIAL.
//DOCENTE: BUGIOLACHI JOSÉ LUIS.
//ALUMNO: BUSNELLI LUCAS.
//COMISIÓN: 1.
//VIDEO Youtube:https://www.youtube.com/watch?v=DiICRcrbTF8&ab_channel=LucasBusnelli
int cant;
int xPlayer;
float y;
float x;
float suma;
float estadoJuego;
String [] txt = {"LLUVIA ÁCIDA.\n Presione X para continuar", "Instrucciones: \n Esquivar la lluvia antes de que acabe el tiempo\n utilizando A para moverse hacia la izquierda\n y D para moverse a la derecha.", "GANASTE!!!", "PERDISTE!"};
void setup() {
  size(800, 600);
  valoresIniciales();
  noCursor();
}
void draw() {
  background(0);
  println(mouseX, mouseY);
  if (estadoJuego==0) {
    pantallasI(txt[0], width/2, height/2);
  } else if (estadoJuego==1) {
    pantallasI (txt[1], 400, 100);
  } else if (estadoJuego==2) {
    background(64, 48, 85);
    noStroke();
    fill(50, 34, 72);
    rect(0, 500, 800, 100);
    fill(188, 51, 51);
    rect (xPlayer, 470, 30, 30);
    for (int i=0; i<10; i++) {
      fill(137, 188, 51);
      rect(random(width), random (y=y+suma), 20, 20);
    }
  }
}
void keyPressed() {
  if (key== 'x' || key=='X') {  //PASAR PANTALLAS.
    estadoJuego++;
  }
  if (key == 'a' || key == 'A') { //IZQUIERDA.
    xPlayer-=30;
  } else if (key=='d' || key =='D') { //DERECHA.
    xPlayer+=30;
}
