import oscP5.*;
PGraphics circulos;
PGraphics circulitos;
PGraphics manchas;


float mapeo2;
float mapeoamp;
float umbralAmp = 30;
float MIN_AMP = umbralAmp;
float MAX_AMP = 90;
float MIN_PITCH= 50;
float MAX_PITCH = 80;
float fAmortiguacion = 0.9;
OscP5 osc;
float amp, pitch;
boolean haySonido = false;
GestorSenial gAmp;
GestorSenial gPitch;


ArrayList <Circulo>lista;


Fondo f;
Trazo trazo;

void setup() {
  size(800, 600);

  circulos=createGraphics(width, height);
  circulitos=createGraphics(width, height);
  manchas=createGraphics(width, height);

  osc = new OscP5(this, 12345);
  f = new Fondo();
  trazo = new Trazo();
  gAmp = new GestorSenial(MIN_AMP, MAX_AMP, fAmortiguacion);
  gPitch = new GestorSenial(MIN_PITCH, MAX_PITCH, fAmortiguacion);


  noStroke();  
  lista = new ArrayList();
  f.dibujar();
}  

void draw() {
  mapeoamp=map(amp, 50, 100, 0, 90);
  mapeo2=map(mapeoamp, 0, 85, 0, 1);
  gAmp.actualizar(mapeoamp);
  gPitch.actualizar(pitch);
  haySonido = mapeoamp > umbralAmp;
  haySonido = gAmp.filtradoNorm() > 0;

  Circulo nuevo = new Circulo();
  boolean estaLibre = true;
  for (int i = 0; i<lista.size(); i++) {
    Circulo este = lista.get(i);
    if (este.ChocaCon(nuevo)) {
      if (haySonido) {
        if (gPitch.filtradoNorm() > 0.5 && gPitch.filtradoNorm() < 1) { 
          trazo.trazoDibujo();
        }
      }
      estaLibre = false;
    }
  }

  if (haySonido) {
    if (estaLibre) {
      lista.add(nuevo);
    }
  }

  for (int i = 0; i<lista.size(); i++) {
    Circulo este = lista.get(i);
    boolean tieneLugar = true;
    for ( int j = 0; j<lista.size(); j++) {
      if (i != j) { 
        Circulo otro = lista.get(j);
        if (este.ChocaCon(otro)) {
          tieneLugar = false;
        }
      }
    }
    if (haySonido) {
      if (tieneLugar) {
        if (gPitch.filtradoNorm() > 0 && gPitch.filtradoNorm() < 0.5) {
          este.Color();
          este.crecer();
          este.dibujar();
        }
      }
    }
  }

  image(circulos, 0, 0);
  image(circulitos, 0, 0);
  image(manchas, 0, 0);
}
void oscEvent ( OscMessage m) {

  if (m.addrPattern().equals("/amp")) {

    amp = m.get(0).floatValue();
  }

  if (m.addrPattern().equals("/pitch")) {

    pitch = m.get(0).floatValue();
  }
}
