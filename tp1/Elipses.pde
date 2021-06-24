float margen = 20;

class Circulo {
  Paleta paleta;
  float x, y; 
  float r; 
  float c;
  float size;

  Circulo() {
    paleta = new Paleta( "colores "+floor(random(0, 2))+".jpg" );
    x = random( width );
    y = random( height );
    r = 50; 
    c = mapeo2; // velocidad de crecimiento
    size = 1;
  } 

  void crecer() {
    r += c;
  }

  void dibujar() {
    circulos.beginDraw();
    circulos.ellipse (x, y, r*2, r*2);
    for (float ring = size; ring >= 0; ring -= random(3, 10)) {
      circulitos.beginDraw();
      pushStyle();
      circulitos.fill( paleta.darUnColor() );
      circulitos.noStroke();
      circulitos.ellipse (x, y, r-ring-2, r-ring-2);
      popStyle();
      circulitos.endDraw();
    }
    circulos.endDraw();
  }
  void Color() {
    circulos.fill( paleta.darUnColor() );
    circulos.noStroke();
  }
  boolean ChocaCon (Circulo otro) {
    return dist ( x, y, otro.x, otro.y )< r+c+otro.r+otro.c+margen;
  }
}
