class Controlador {
  SoundFile clack, musicafondo, sonidoperder, tada;
  Pantalla pantallaActual;
  Creditos creditos;
  Escala escala = new Escala();
  Juego juego;
  int cantidadPantallas = 22;
  Pantalla [] pantallas = new Pantalla [cantidadPantallas];
  PImage [] fondos = new PImage [cantidadPantallas];
  Textos textos  = new Textos();
  int pantalla;

  Controlador(PApplet pro) {
    clack = new SoundFile(pro, "clack.wav");
    musicafondo = new SoundFile(pro, "musicafondo.wav");
    sonidoperder = new SoundFile(pro, "sonidoperder.wav");
    tada = new SoundFile (pro, "tada.wav");
    musicafondo.amp(0.2);
    musicafondo.loop();

    Boton boton1, boton2;
    Texto textoPantalla1, textoPantalla2;                                  
    cargarFondos();

    pantallas = new Pantalla [cantidadPantallas];  

    //Creo la pantalla 0
    pantalla = 0;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 0, 500, 21); // (Pantalla actual, texto) coord X, coord Y, Pantalla donde ir
    boton2 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 1), 400, 300, 1);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, null, boton1, boton2, LEFT, null, null);

    //Creo la pantalla 1
    pantalla = 1;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 2);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, null, boton1, null, LEFT, null, null);

    //Creo la pantalla 2
    pantalla = 2;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 0, 500, 3);
    boton2 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 1), 400, 500, 14);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 50, 450);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, boton2, LEFT, null, null);

    //Creo la pantalla 3
    pantalla = 3;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 4);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, null, boton1, null, LEFT, null, null);

    //Creo la pantalla 4
    pantalla = 4;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 5);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, null, boton1, null, LEFT, null, null);

    //Creo la pantalla 5
    pantalla = 5;
    juego= new Juego(this, escala, clack);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], null, null, null, null, LEFT, null, juego);

    //Creo la pantalla 6
    pantalla = 6;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 0, 500, 16);
    boton2 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 1), 400, 500, 7);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 50, 450);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, boton2, LEFT, null, null);

    //Creo la pantalla 7
    pantalla = 7;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 8);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, null, boton1, null, LEFT, null, null);

    //Creo la pantalla 8
    pantalla = 8;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 0, 500, 17);
    boton2 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 1), 400, 500, 9);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 50, 450);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, boton2, LEFT, null, null);

    //Creo la pantalla 9
    pantalla = 9;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 0, 500, 18);
    boton2 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 1), 400, 500, 10);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 50, 450);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, boton2, LEFT, null, null);

    //Creo la pantalla 10
    pantalla = 10;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 11);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, null, boton1, null, LEFT, null, null);

    //Creo la pantalla 11
    pantalla = 11;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 0, 500, 12);
    boton2 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 1), 400, 500, 19);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 50, 450);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, boton2, LEFT, null, null);

    //Creo la pantalla 12
    pantalla = 12;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 0, 500, 20);
    boton2 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 1), 400, 500, 13);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 50, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 50, 450);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, boton2, LEFT, null, null);

    //Creo la pantalla 13
    pantalla = 13;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 21);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 400, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 400, 100);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, null, CENTER, null, null);

    //Creo la pantalla 14
    pantalla = 14;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 0);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 400, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 400, 100);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, null, CENTER, null, null);

    //Creo la pantalla 15
    pantalla = 15;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 0);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 400, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 400, 100);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, null, CENTER, null, null);

    //Creo la pantalla 16
    pantalla = 16;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 0);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 400, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 400, 100);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, null, CENTER, null, null);

    //Creo la pantalla 17
    pantalla = 17;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 0);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 400, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 400, 100);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, null, CENTER, null, null);

    //Creo la pantalla 18
    pantalla = 18;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 0);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 400, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 400, 100);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, null, CENTER, null, null);

    //Creo la pantalla 19
    pantalla = 19;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 0);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 400, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 400, 100);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, null, CENTER, null, null);

    //Creo la pantalla 20
    pantalla = 20;
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 0);
    textoPantalla1 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 0), 400, 50);
    textoPantalla2 = new Texto(escala, textos.getTextoParaPantalla(pantalla, 1), 400, 100);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textoPantalla1, textoPantalla2, boton1, null, CENTER, null, null);

    //Creo la pantalla 21
    pantalla = 21;
    creditos = new Creditos(escala, textos.getTextoParaPantalla(pantalla, 0), 400, 600);
    boton1 = new Boton(this, escala, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 500, 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], null, null, boton1, null, CENTER, creditos, null);

    //Al terminar de crear las pantallas, indico la actual.
    pantallaActual = pantallas[0];
  }

  void dibujar() {
    pantallaActual.dibujar();
  }

  void cargarFondos() {
    for (int i=0; i<cantidadPantallas; i++) {
      fondos[i] = loadImage(i + ".jpg");
    }
  }

  void mousePressed() {
    creditos.reiniciarcreditos();
    int pantallaAIr = pantallaActual.mousePressed();
    if (pantallaAIr != -1) {
      pantallaActual = pantallas[pantallaAIr];
    }
    if (pantallaActual == pantallas[5])
      juego.mousePressed();
  }

  void mouseReleased() {
    pantallaActual.mouseReleased();
  }
  void keyPressed() {
    pantallaActual.keyPressed();
  }
}
