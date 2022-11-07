class Estados {
  int estado;
  int estadosLimite;
  String nombresTemporal;
  Estados (int estado) {
    this.estado = estado;
    this.estadosLimite = 4;
  }
  void pasarEstados (int estado, String nombresTemporal) {
    this.nombresTemporal = nombresTemporal;
    this.estado = estado;
  }
  void mostrarNombres() {
    switch (this.estado) {
    case 0:
      this.nombresTemporal = "Pantalla de bienvenida con boton de jugar opción de creditos";
    case 1:
      this.nombresTemporal = "Jugando...";
    case 2:
      this.nombresTemporal = "Ganaste!!!";
    case 3:
      this.nombresTemporal = "Perdiste :(";
      break;
    }
  }
  void sumar() {
    if (this.estado < this.estadosLimite) {
      this.estado++;
    }
    println(this.estado, this.nombresTemporal);
    this.mostrarNombres();
  }
}
