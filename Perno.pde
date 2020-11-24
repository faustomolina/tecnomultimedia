class Perno {
  PImage imagenPerno;
  boolean pressed;
  int posX, posY, posYinicial, anchoPerno, altPerno;
  int sweetspot;
  int areaSweet = 10; //mientras menor el numero, mas dificil
  boolean enlaZona = false;
  int feed = 255;
  Controlador controlador;
  Escala escala;
  SoundFile clack;


  Perno(Escala escala, PImage p_imagenPerno, int p_posX, int p_posY, int p_anchoPerno, int p_altPerno, Controlador controlador, SoundFile clack) {
    imagenPerno = p_imagenPerno;
    posX= p_posX;
    posY= p_posY;
    posYinicial=posY;
    anchoPerno = p_anchoPerno;
    altPerno = p_altPerno;
    this.controlador = controlador;
    this.escala = escala;
    this.clack = clack;
    generarSweetspot();
  }

  void generarSweetspot() {
    sweetspot= floor(random(escala.escY(posY+75), escala.escY(posY + altPerno-75)));
  }

  void update() {
    if (pressed) {
      posY++;
    }
  }

  void dibujar() {
    update();  //mantener presionado
    volverPosInicial();  //volver si se suelta
    chequearSweetspot();  //fijar en la zona

    tint(feed);
    image(imagenPerno, escala.escX(posX), escala.escY(posY), escala.escX(anchoPerno), escala.escY(altPerno));   

    // visualizar sweetspot
    /*pushStyle();
     fill(0);
     ellipse(escala.escX(posX+anchoPerno/2), escala.escY(sweetspot), escala.escX(areaSweet*2), escala.escX(areaSweet*2));
     popStyle();*/
  }

  void chequearSweetspot() {
    if (enlaZona) { 
      posY = round(sweetspot);
      //clack.play();
    }
  }

  void volverPosInicial() {
    if (!pressed & (escala.escY(posY) > escala.escY(posYinicial))) {
      posY-=5;
    }
  }

  void reiniciar() {
    posY=posYinicial;
    enlaZona=false;
    generarSweetspot();
  }

  boolean pasando() {
    if (pressed && (escala.escY(posY)<escala.escY(sweetspot+areaSweet)) && escala.escY(posY) > escala.escY(sweetspot - areaSweet)) {
      return true;
    }
    return false;
  }

  void mousePressed() {
    if ((mouseX > escala.escX(posX) && mouseX < escala.escX(posX + anchoPerno))&&(mouseY > escala.escY(posY) && mouseY < escala.escY(posY+ altPerno))) {
      pressed = true;
    }
  }

  void mouseReleased() {
    if (pressed) {
      if (escala.escY(posY)<escala.escY(sweetspot+areaSweet) && escala.escY(posY) > escala.escY(sweetspot - areaSweet)) {
        enlaZona = true;
        clack.play();
      } else {
        controlador.juego.restarIntento();
      }
    }
    pressed = false;
  }
}
