class Juego {

  int estado = 1;
  Intentos intentos;
  VideoJuego videojuego;
  PImage imagenPerno;
  Controlador controlador;
  Escala escala;
  SoundFile clack;

  Juego(Controlador controlador, Escala escala, SoundFile clack) {
    this.controlador = controlador;
    this.escala = escala;
    this.clack = clack;
    imagenPerno = loadImage("perno.png");
    videojuego = new VideoJuego(imagenPerno, controlador, escala, clack);
    intentos = new Intentos();
  }

  void dibujar() {

    if (estado == 1) {//dibujoVideojuego
      dibujoVideoJuego();
    } else if (estado == 2) {
      videojuego.pantallaGanaste();
    } else if (estado == 3) {
      videojuego.pantallaPerdiste();
    }
  }
  void dibujoVideoJuego() {
    videojuego.dibujar();
    intentos.dibujar();
    if (videojuego.controlarGanar() == 2) {
      estado = 2;
    } else
      if (intentos.getVidas() == 0) {
        estado = 3;
      }
  }


  void restarIntento () {
    intentos.restarVida();
  }

  void mousePressed() {
    videojuego.mousePressed();
  }

  void mouseReleased() {
    videojuego.mouseReleased();
  }

  void keyPressed() {
    if (key == 'r'|| key == 'R') {
      videojuego.keyPressed();
      estado=1;
    }
  }
}
