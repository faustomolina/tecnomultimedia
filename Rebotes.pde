class Triangulos extends FPoly {
  Triangulos() {
    super();
  }
  void inicializar(float _x, float _y, float _w, float _z, float _f, float _d) {
    setName ("rebotes");
    vertex (_x, _y);
    vertex (_w, _z);
    vertex (_f, _d);
    pushStyle();
    setNoStroke();
    setNoFill();
    popStyle();
    setStatic(true); //no cae, antigravedad
    setGrabbable(false); //no se puede mover con el mouse
  }

  void inicializarAb(float _x, float _y, float _w, float _z, float _f, float _d) {
    setName ("rebotes");
    vertex (_x, _y);
    vertex (_w, _z);
    vertex (_f, _d);
    pushStyle();
    setNoStroke();
    setNoFill();
    popStyle();
    setRestitution(1.5);
    setStatic(true); //no cae, antigravedad
    setGrabbable(false); //no se puede mover con el mouse
  }



  void sumarPunto()
  {
    puntaje++;
  }

  void resetear()
  {
    mundo.add(this);
  }
} 
