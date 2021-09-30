class Bonus extends FCircle {

  boolean sumarBonus;

  Bonus(float _r) {
    super (_r); //tamanio del circulo
  }
  void dibujar(float _x, float _y) {

    setName("bonus");    
    setSensor(true);
    setStatic(true);
    attachImage(loadImage("bonus.png"));
    setPosition(_x, _y);
    setRotatable(false);
  }

  void sumarBonus() {
    if (!sumarBonus) {
      sumarBonus = true;
      puntaje = (puntaje + 10);
      mundo.remove(this);
    }
  }

  void resetearBonus() {
    mundo.remove(this);
    mundo.add(this);
    sumarBonus = false;
  }
}
