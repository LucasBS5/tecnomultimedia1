class Personas {
  PImage persona;
  float pxp, pyp, mov;
  Personas (float pxp, float pyp, float mov) {
    persona = loadImage("persona.png");
    persona.resize(80, 80);
    this.pxp = pxp;
    this.pyp = pyp;
    this.mov = mov;
  }
  void dibujarP() {
    imageMode(CENTER);
    image(persona, pxp, pyp);
  }
  void personaMueve() {
    if (pxp >= 350 - width/2) {
      pxp += mov;
    } 
    if (pxp >=width) {
      pxp=0;
    }
  }
}
