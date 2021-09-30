class Pelota extends FCircle {
  Pelota(float _r) {
    super (_r); //tamanio del circulo
  }

  void inicializar(float _x, float _y) {
    setName ("pelota");
    setPosition(_x, _y);
    attachImage(imagenPelota);
    setRestitution(0.5);  //rebote
    // setGrabbable(false); //no se puede agarrar
    setFriction(50); //friccion cuando colicionan
    setDensity(2); //dencidad/masa/peso
    setVelocity(0, -1900);
  }

  void inicializarEngranaje(float _x, float _y) {
    setStatic(true);
    setPosition(_x, _y);
  }
}
