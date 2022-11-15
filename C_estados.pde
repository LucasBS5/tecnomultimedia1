/*class Estados {
 int estado = 0;
 void pantallas() {
 if (estado == 0) {
 creditos();
 }
 if (estado == 1) {
 instrucciones();
 }
 if (estado == 2) {
 jugando();
 }
 }
 void creditos() {
 estado = 0;
 background(0);
 textSize(25);
 fill(124, 162, 90);
 text("Espacio para continuar", 10, 50);
 text("Hecho por Lucas Busnelli", 200, 300);
 text("91503/0", 300, 350);
 }
 void instrucciones() {
 estado = 1;
 background(0);
 textAlign(CENTER);
 textSize(25);
 fill(232, 210, 136);
 text("Instrucciones:", 350, 150);
 text("El objetivo es matar a los guardias teniendo \ncuidado de no matar a tu entrenador", 350, 200);
 text("Desplazarse por la ciudad con las teclas 'W' 'A' 'S' y 'D'", 350, 300);
 text("Espacio para jugar", 120, 50);
 }
 void jugando() {
 estado = 2;
 mainclass.dibujar();
 mainclass.volar(keyCode);
 }
 void pasarEstados(int tec) {
 if (estado == 0) {
 if (tec == ' ') {
 estado = 1;
 } else if (estado == 1) {
 if (tec == ' ') {
 estado = 2;
 }
 }
 }
 }
 }*/
