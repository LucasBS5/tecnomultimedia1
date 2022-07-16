void pantallasI(String txt, int px, int py) {
  textSize(25);
  textAlign(CENTER);
  fill(255, 217, 0);
  text(txt, px, py);
}
void jugando() {
  background(64, 48, 85);
  noStroke();
  fill(50, 34, 72);
  rect(0, 500, 800, 100);
  for (int i=0; i<cant; i++) {
    fill(137, 188, 51);
    rect(i*separa, y=y+vel, 20, 20);
  }
  timer++;
  fill(188, 51, 51);
  text( timer, 740, 30);
}
