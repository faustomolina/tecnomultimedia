class Intentos {
  int vidas=3;
  Intentos() {
  }

  void dibujar() {
    pushStyle();
    fill(0);
    textSize(20);
    text("Intentos: "+vidas, 25, 25);
    popStyle();
  }

  int getVidas() {
    return vidas;
  }

  void restarVida() {
    vidas--;
  }

  void reiniciarVidas() {
    vidas=3;
  }
}
