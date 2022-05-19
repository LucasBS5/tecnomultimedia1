//TRABAJO PRACTICO 1, ANIMANDO CON CÓDIGO - TECNOLOGÍA MULTIMEDIAL.
//DOCENTE: BUGIOLACHI JOSÉ LUIS.
//ALUMNO: BUSNELLI LUCAS.
//COMISIÓN: 1.
int tamx;
int tamy;
float ubix;
float ubiy;
float y;
float y2;
float y3;
float y4;
float y5;
float y6;
float velocidad;
float suma;
float tiempo;
float ubi;
PImage fondo;
PImage titulo;
PFont fuente;
String estado;
String animaciones;
String director;
String vfx;
String produccion;
String guionistas;

void setup() {
  size(700, 600);
  tamx = 50;
  tamy = 50;
  ubix = -20;
  ubiy = -20;
  y = 0;
  y2 =0;
  y3 =0;
  y4 =0;
  y5 =0;
  y6 =0;
  velocidad = 1;
  suma=1;
  tiempo = 0;
  fondo = loadImage("fondo.jpg");
  titulo = loadImage("titulo.png");
  textSize(25);
  fuente = loadFont("baskoldface.vlw");
  animaciones = "ANIMACIONES \nBrad Schiff\nMalcom Lamont\nAnthony Elworthy\nPayton Curtis\nSuzanne Twining\nJeff Riley\nChris Tootel\nJuliana Cox\nAmy Adamy";
  director = "Direct by Henry Selick\nHistoria original Neil Gaiman"; 
  produccion = "Productor Ejecutivo Michael Zoumas\nLine Producer Harry Liden\nSupervisor Ezra J. Sumner";
  vfx = "VFX \nLaura Schultz\nJohn Benson\nMartin Pelham\nKirk Scott\nRichard Kent Burtton";
  guionistas = "GUIONISTAS\nGraham Anabelle\nVera Brosgol\nJulian Narino\nEan Mcnamara";
}
void draw () {
  println(tiempo); //Imprimir tiempo.
  println(y+"y"); // Imprimir valor de y.
  println(mouseX, mouseY); //Imprimir coordenadas en el mouse.
  y= y+velocidad;
  y2=y2+velocidad;
  y3=y3+velocidad;
  y4=y4+velocidad;
  y5=y5+velocidad;
  y6=y6+velocidad;
  tiempo=tiempo+suma;
  background(0);
  fill(250,0,0);
  image(fondo, 0, 0, width, height);
  image(titulo, 30, y, 400, 130);
  fill(200,0,0);
  noStroke();
  ellipse(ubix,ubiy,tamx,tamy); //PELOTA CON ESTRELLA.

  //CREDITOS:

  if (y>=550) {
    y2=y2+suma;
    text(animaciones, 50, y2-1000);
  }
  if (y>=900) {
    y3=y3+suma;
    text(director, 50, y3-1300);
  }
  if (y>=1300) {
    y4=y4+suma;
    text(produccion, 50, y4-1600);
  }
  if (y>=1700) {
    y5=y5+suma;
    text(vfx, 50, y5-1900);
  }
  if (y>=2000) {
    y6=y6+suma;
    text(guionistas, 50, y6-2200);
  }
}
void keyPressed() {
  if (key == 'r' || key == 'R') { //Reiniciar.
  }
  frameCount = 0;
  if (key == 'r' || key == 'R') {
    y = 0;
  } 
  if (key== 'l' || key== 'L'){ //PELOTA CON ESTRELLA POSICION RANDOM.
  ubix = random(width);
  ubiy = random(width);
}
}
