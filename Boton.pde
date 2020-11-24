class Boton {
  int posX, posY, ancho, alto, pantallaAIr;
  String texto;
  Escala escala;
  Controlador controlador;

  Boton(Controlador controlador, Escala escala, String texto, int posX, int posY, int pantallaAIr) {
    this.texto = texto;
    this.posX = posX;
    this.posY = posY;
    this.pantallaAIr = pantallaAIr;
    this.escala = escala;
    this.controlador = controlador;
    ancho = width/2;
    alto = 50;
  }

  void dibujar() {
    if (mouseX > escala.escX(posX) && mouseX < escala.escX(posX + ancho) && mouseY > escala.escY(posY) && mouseY < escala.escY(posY + alto) ) {
      fill(0, 100);
      rect(escala.escX(posX), escala.escY(posY), escala.escX(ancho), escala.escY(alto));
    }
    fill(255);
    pushStyle();
    textAlign(CENTER);
    text(texto, escala.escX(posX + (ancho/2)), escala.escY(posY + (alto/2)));
    popStyle();
  }

  int mousePressed() {
    if (mouseX > escala.escX(posX) && mouseX < escala.escX(posX + ancho) && mouseY > escala.escY(posY) && mouseY < escala.escY(posY + alto) ) {
      if (pantallaAIr==0 ) {
        controlador.juego.estado=1;
        controlador.sonidoperder.stop();
        controlador.musicafondo.loop();
      }
      if (pantallaAIr==14 ||pantallaAIr == 15 ||pantallaAIr==16 ||pantallaAIr==17 ||pantallaAIr==18 ||pantallaAIr==19 ||pantallaAIr==20 ) {
        controlador.musicafondo.stop();
        controlador.sonidoperder.play();
      }
      if (pantallaAIr == 13) {
        controlador.musicafondo.stop();
        controlador.tada.play();
      }

      return pantallaAIr;
    }
    return -1;
  }
}
