void setup() {

size(600,600);
background(0,0,50);
}
void draw (){
noStroke();
fill(150);
rect(250,250,100,200); /* CUERPO DEL COHETE */
fill(100);
rect(280,445,40,40); /* "MOTOR" */
fill(255,0,0);
triangle(250,250,350,250,300,180); /* PUNTA */
triangle(350,420,350,450,400,450); /* ALETA DERECHA */
triangle(250,420,250,450,200,450); /* ALETA IZQUIERDA */
fill(255,128,0);
triangle(290,485,310,485,300,512); /* PROPULSIÓN */
fill(180,226,244);
circle(300,326,60); /* VENTANA 1 */
circle(300,400,40); /* VENTANA 2 */
}
