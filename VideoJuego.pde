class VideoJuego {
  Perno [] pernos;
  int cantidadPernos = 5;
  int posX;
  int anchoPerno=80;
  int altPerno=310;
  int padding= 20;
  int PernoenY=50;
  int PernoenX=width/5;
  int posYinicial= 50;
  Controlador controlador;
  Escala escala;
  SoundFile clack;

  VideoJuego(PImage p_imagenPerno, Controlador controlador, Escala escala, SoundFile clack) {
    noStroke();
    this.controlador = controlador;
    this.escala=escala;
    this.clack = clack;
    pernos = new Perno [cantidadPernos];
    for (int i = 0; i < cantidadPernos; i++) {
      posX =  PernoenX + i * (anchoPerno + padding);
      pernos[i] = new Perno(escala, p_imagenPerno, posX, PernoenY, anchoPerno, altPerno, controlador, clack);
    }
  }

  void dibujar() {
    background(155);
    rect(0, 0, width, height/2);
    for (int i = 0; i < cantidadPernos; i++) {
      pernos[i].dibujar();
      feedback();
    }
    pushStyle();
    fill(255);
    textAlign(CENTER);
    text(controlador.textos.getTextoParaPantalla(5, 0), escala.escX(400), escala.escY(500));
    text(controlador.textos.getTextoParaPantalla(5, 1), escala.escX(400), escala.escY(520));
    popStyle();
    pushStyle();
    fill(0);
    textSize(15);
    textAlign(CENTER);
    text("Para abrir el cofre debes bajar los pernos mantiendo presiona el click sobre uno y soltar en la zona en la que traban", escala.escX(400), escala.escY(540));
    text("De lo contrario volveran a su posición inicial y deberas intentarlo de nuevo", escala.escX(400), escala.escY(560));
    popStyle();
  }

  void reiniciar() {
    for (int i = 0; i < cantidadPernos; i++) {
      pernos[i].posY=posYinicial;
      pernos[i].enlaZona=false;
      pernos[i].generarSweetspot();
    }
    controlador.juego.intentos.reiniciarVidas();
  }

  int controlarGanar() {
    if (pernos[0].enlaZona && pernos[1].enlaZona && pernos[2].enlaZona && pernos[3].enlaZona && pernos[4].enlaZona) {
      return 2;
    }
    return 0;
  }

  void feedback() {
    for (int i = 0; i < cantidadPernos; i++) {
      if (pernos[i].pasando()) {
        pernos[i].feed = 230;
      } else 
      if (pernos[i].pasando()==false) {
        pernos[i].feed = 255;
      }
    }
  }

  void pantallaGanaste() {
    reiniciar();
    controlador.pantallaActual = controlador.pantallas[6];
  }

  void pantallaPerdiste() {
    reiniciar();
    controlador.pantallaActual = controlador.pantallas[15];
    controlador.musicafondo.stop();
    controlador.sonidoperder.play();
  }


  void mousePressed() {
    for (int i = 0; i < cantidadPernos; i++) {
      pernos[i].mousePressed();
    }
  }

  void mouseReleased() {
    for (int i = 0; i < cantidadPernos; i++) {
      pernos[i].mouseReleased();
    }
  }

  void keyPressed() {
    reiniciar();
  }
}
