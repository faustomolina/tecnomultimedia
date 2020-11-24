class Texto {
  int posX, posY, ancho, alto, pantallaAIr;
  String texto;
  Escala escala;
  Texto(Escala escala, String texto, int posX, int posY) {
    this.texto = texto;
    this.posX = posX;
    this.posY = posY;
    this.escala = escala;
  }

  void dibujar() {
    fill(255);
    text(texto, escala.escX(posX), escala.escY(posY));
  }
}
