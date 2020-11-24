class Escala {

  Escala() {
  }

  int escX(int valor) {
    return round(map(valor, 0, 800, 0, width));
  }
  int escY(int valor) {
    return round(map(valor, 0, 600, 0, height));
  }
}
