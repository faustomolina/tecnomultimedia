class Cajas extends FBox {
  Boolean izqPresionado, derPresionado; //banderas, funciones controlables

  Cajas(float _w, float _h) {
    super(_w, _h);
  }
  void inicializar(float _x, float _y) {
    setName ("paredes");
    setPosition(_x, _y);
    setStatic(true);
    setGrabbable(false);
  }
  void inicializarPaletas(float _x, float _y) {

    izqPresionado = false;
    derPresionado = false;

    setName ("paletas");
    setPosition(_x, _y); //lo agrego como parametro
    setStatic(true);
    //setRotation(_r);
    setGrabbable(false);
    setRotatable(false);
  }

  void actualizarPaletaDer() {
  //  println(derPresionado);
    if (derPresionado) { //arribaPresionado
      setVelocity(400, -400);//setVelocity no atraviesa los objetos
      addForce(335,725,400,700);
      //setRotation(radians(20));
    } else {
      setRotation(radians(-20));
      setVelocity(0, 100);
    }
  }
  
    void actualizarPaletaIzq() {
    //println(derPresionado); 
    if (izqPresionado) { //arribaPresionado
      setVelocity(200, -400);//setVelocity no atraviesa los objetos
      //setRotation(radians(-20));
      addForce(265,725,200,700);
    } else {
      setRotation(radians(20));
      setVelocity(getVelocityX(), 100);
    }
  }
}
