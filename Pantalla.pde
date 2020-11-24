class Pantalla {
  Boton[] botones;
  Texto[] textos;
  PImage fondo;
  PFont fuente;
  int Alinear;
  Texto textoPantalla1;
  Texto textoPantalla2;
  Boton boton1; 
  Boton boton2;
  Creditos creditos;
  Juego juego;

  Pantalla(PImage fondo, Texto textoPantalla1, Texto textoPantalla2, Boton boton1, Boton boton2, int p_Alinear, Creditos creditos, Juego juego) {
    this.fondo = fondo;
    this.textoPantalla1 = textoPantalla1;
    this.textoPantalla2 = textoPantalla2;
    this.boton1 = boton1;
    this.boton2 = boton2;
    this.Alinear = p_Alinear;
    this.creditos = creditos;
    this.juego = juego;
    fuente = loadFont("Leander.vlw");
    textFont(fuente);
    textSize(20);
  }

  void dibujar() {
    image(this.fondo, 0, 0, width, height);

    textAlign(Alinear);

    if (creditos != null) {
      creditos.dibujar();
    }

    if (juego != null) {
      juego.dibujar();
    }

    if (textoPantalla1 != null) {
      textoPantalla1.dibujar();
    }

    if (textoPantalla2 != null) {
      textoPantalla2.dibujar();
    }

    if (boton1 != null) {
      boton1.dibujar();
    }

    if (boton2 != null) {
      boton2.dibujar();
    }
  }

  int mousePressed() {
    int pantallaAIr = -1;
    
    if (juego != null)
      juego.mousePressed();

    if (boton1 != null) {
      pantallaAIr = boton1.mousePressed();
    }

    if (boton2 != null && pantallaAIr == -1) {
      pantallaAIr = boton2.mousePressed();
    }
    return pantallaAIr;
  }

  void mouseReleased() {
    if (juego != null)
      juego.mouseReleased();
  }
  void keyPressed() {
    if (juego != null)
      juego.keyPressed();
  }
}
