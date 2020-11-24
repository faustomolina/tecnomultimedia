class Creditos {
  int posX, posY;
  String texto;
  Escala escala;

  Creditos(Escala escala, String texto, int posX, int posY) {
    this.texto = texto;
    this.posX = posX;
    this.posY = posY;
    this.escala = escala;
  }

  void dibujar() {
    fill(255);
    text(texto, escala.escX(posX), escala.escY(posY));
    mover();
  }

  void mover() {
    if (posY>200)
      escala.escX(posY--);
  }

  void reiniciarcreditos() {
    if (mouseX > escala.escX(200) && mouseX <   escala.escX(500) && mouseY > escala.escY(500) && mouseY < escala.escY(550)) {
      posY = escala.escY(600);
    }
  }
}
