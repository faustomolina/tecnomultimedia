int id1 = 0;
int id2 = 1;

boolean id1Presente = false;
boolean id2Presente = false;

void addTuioObject(TuioObject tobj) {
  if (estado == "juego") {
    if (vidas >= 0 && tobj.getSymbolID() == id1 && tobj.getAngle() < 3 ) {
      if (pelota == null) {
        pelota = new Pelota(30);
        pelota.inicializar(570, 700);
        pelota.setName ("pelota");
        mundo.add(pelota);
      }
    }
    if (tobj.getSymbolID() == id1 && tobj.getAngle() > 3) {
      id1Presente = true;
      paleta1.derPresionado = true;
      paleta.trigger();
    } else if (tobj.getSymbolID() == id2) {
      id2Presente = true;
      paleta2.izqPresionado = true;
      paleta.trigger();
    }
  }
}

void removeTuioObject(TuioObject tobj) {
  if (estado== "juego") {
    if (tobj.getSymbolID() == id1) {
      id1Presente = false;
      paleta1.derPresionado = false;
    } else if (tobj.getSymbolID() == id2) {
      id2Presente = false;
      paleta2.izqPresionado = false;
    }
  }
}
