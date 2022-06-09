//TRABAJO PRACTICO 2, ILUSIÓN OPTICA INTERACTIVA - TECNOLOGÍA MULTIMEDIAL.
//DOCENTE: BUGIOLACHI JOSÉ LUIS.
//ALUMNO: BUSNELLI LUCAS.
//COMISIÓN: 1.
//VIDEO Youtube: https://www.youtube.com/watch?v=tQbe_xH4vhE&ab_channel=LucasBusnelli
int cant = 100;
int tam;
int ce = 1;
int tamE = 200;
void setup() {
  size(600, 600);
}
void draw() {
  background(255);
  println(mouseX, mouseY);
  tam = width/cant;
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) 
    {
      float distance = dist(mouseX, mouseY, width/2, height/2);
      if ((x+y)%2==0) {
        stroke(0);
        fill (0);
      } else {
        fill(255);
      }
      if (distance < 100) {
        fill (random(255), random(255), random(255), 150);
      }
      strokeWeight(2);
      rect(x*10, y*10, 10, 10);
    }
  }
  for (int e=0; e<ce; e++) {
    nuevaFuncion();
  }
  fill(0, 255, 0);
  circle(width/2, height/2, 20);
}
void keyPressed() {
  if (key=='t' || key == 'T') { //AGRANDAR ELLIPSE.
    tamE++;
  }
  if (key=='r' || key == 'R') { //REINICIAR.
    tamE=200;
  }
}
