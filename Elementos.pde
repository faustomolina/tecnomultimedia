class Cajas extends FBox {
  Boolean izqPresionado, derPresionado; //banderas, funciones controlables

  Cajas(float _w, float _h) {
    super(_w, _h);
  }
  void inicializar(float _x, float _y) {
    setName ("paredes");
    //attachImage(imagenPared);
    setPosition(_x, _y);
    setStatic(true);
    setGrabbable(false);
  }
  void inicializarPaletas(float _x, float _y) {

    izqPresionado = false;
    derPresionado = false;

    setName ("paletas");
    setPosition(_x, _y); //lo agrego como parametro
    setStatic(false);
    //attachImage(imagenPaleta);
    //setRotation(_r);
    setGrabbable(false);
    setRotatable(true);
  }

  void paletaAzul() {
    attachImage(imagenPaleta);
  }
  void paletaRoja() {
    attachImage(imagenPaletaRoja);
  }

  void paredAzul() {
    attachImage(imagenPared);
  }

  void paredRoja() {
    attachImage(imagenParedRoja);
  }

  void actualizarPaletaDer() {
    //  println(derPresionado);
    if (derPresionado) { //arribaPresionado
      setVelocity(0, -600);//setVelocity no atraviesa los objetos
    } else {
      //setRotation(radians(-20));
      //setVelocity(0, 100);
    }
  }

  void actualizarPaletaIzq() {
    //println(derPresionado); 
    if (izqPresionado) { //arribaPresionado
      setVelocity(0, -600);//setVelocity no atraviesa los objetos
    } else {
      //setRotation(radians(20));
      //setVelocity(getVelocityX(), 100);
    }
  }
}
