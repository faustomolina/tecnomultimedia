
class Obstaculo extends FCircle {

  Obstaculo(float _r) {
    super(_r);
  }
  void inicializar(float _x, float _y) {
    setName ("obstaculo");
    setPosition(_x, _y);
    setStatic(true);
    setGrabbable(false);
    setRestitution(1.5);
  }

  void obstaculoAzul() {
    attachImage(imagenObstaculo);
  }

  void obstaculoRojo() {
    attachImage(imagenObstaculoRoja);
  }


  void sumarPunto()
  {
    puntaje ++;
  }

  void aniadir()
  {
    mundo.add(this);
  }


  void dibujarBrillo(float _x, float _y) {

    setName ("brillo");
    //   setSensor(true);
    setPosition(_x, _y);
    setStatic(true);
    setGrabbable(false);
    setRestitution(1.5);
    //setStroke(0, 0, 255);
    setNoFill();
  }

  void crecerBrillo() {
    // setSize(getSize()+6);
    if (getSize() == diametro) {
      setSize(75);
    } else if (getSize() >= 68) {
      setSize(diametro);
    }
  }

  void aroAzul() {
    setStroke(0, 0, 255);
  }

  void aroRojo() {
    setStroke(255, 0, 0);
  }
}
