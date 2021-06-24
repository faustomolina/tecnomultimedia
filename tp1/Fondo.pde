class Fondo {
  PImage [] fondo;

  Fondo () {
    fondo = new PImage [3];
    for (int i = 0; i < 3; ++i) {
      fondo[i] = loadImage("Fondo "+i+".jpg");
    }
  }  

  void dibujar() {
    image(fondo[floor(random(0, 3))], 0, 0, width, height);
  }
}
