
class Trazo {
  Paleta paleta;
  PImage mascara;
  PImage trazos[];
  int cantidad =5;

  Trazo() {
    paleta = new Paleta( "colores "+floor(random(0, 2))+".jpg" );
    trazos = new PImage[ cantidad ];
    for ( int i=0; i<cantidad; i++ ) {
      String nombre = floor(random(1, 3))+".png";
      mascara = loadImage( nombre );
      trazos[i] = createImage( 20, 12, RGB);
      trazos[i].filter( INVERT );
      trazos[i].mask( mascara );
    }
  }

  void trazoDibujo() {
    manchas.beginDraw();
    int cual = int( random(5 ));
    float x = random( width  );
    float y = random( height );
    float angulo = radians( map( x, y, width, height, 190 ));
    angulo += radians( random(-10, 10) );
    manchas.translate( x, y );
    manchas.rotate( angulo );
    manchas.scale( random( 1, 2.5 ) );
    manchas.tint( paleta.darUnColor() );
    manchas.noStroke();
    manchas.image( trazos[cual], x, y );
    manchas.endDraw();
  }
}
