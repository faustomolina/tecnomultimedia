import processing.sound.*;

Controlador controlador;

void setup() {
  size(800, 600);
  surface.setResizable(true);
  controlador = new Controlador(this);
}

void draw() {
  controlador.dibujar();
}

void mousePressed() {
  controlador.mousePressed();
}
void mouseReleased() {
  controlador.mouseReleased();
}
void keyPressed() {
  controlador.keyPressed();
}
