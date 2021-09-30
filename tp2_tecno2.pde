import fisica.*;
import ddf.minim.*;
import TUIO.*;

TuioProcessing tuioClient;

Minim minim;
AudioSample salida;
AudioSample paleta;
AudioSample choque;
AudioSample choque2;
AudioSample ganar;
AudioSample perder;
AudioSample perder_vida;
AudioSample moneda;
AudioPlayer sonido;
AudioPlayer sonido2;


FWorld mundo;


FMouseJoint cadena1, cadena2;
int vidas=3;
int diametro = 50;

String cartel;
String estado;

Bonus bonus;
Plataforma piso;
Pelota pelota, engranaje01, engranaje02;
Cajas paleta1, paleta2;
ArrayList <Cajas> pared;
ArrayList <Triangulos> rebotes;
ArrayList <Obstaculo> obstaculos;
ArrayList <Obstaculo> brillos;
int puntaje;
int puntos=30;

PImage imagenPelota;//
PImage imagenPortada;//
PImage imagenFondo;//
PImage imagenObstaculo;//
PImage imagenPared;//
PImage imagenTriArI;//
PImage imagenTriArD;//
PImage imagenTriAbI;//
PImage imagenTriAbD;//
PImage imagenPaleta;

PImage imagenPaletaRoja;
PImage imagenParedRoja;
PImage imagenObstaculoRoja;
PImage imagenFondoRoja;
PImage imagenPelotaRoja;
PImage imagenTriArIRojo;//
PImage imagenTriArDRojo;//
PImage imagenTriAbIRojo;//
PImage imagenTriAbDRojo;//

PFont fuente;

float mapeo2;

void setup() {
  size(600, 800);

  estado = "portada";

  Fisica.init(this);

  tuioClient = new TuioProcessing(this);

  minim = new Minim(this);

  salida = minim.loadSample("salida.mp3", 512);
  paleta = minim.loadSample("paleta.mp3", 512);
  choque = minim.loadSample("choque.mp3", 512);
  choque2 = minim.loadSample("choque2.mp3", 512);
  moneda = minim.loadSample("money.mp3", 521);
  ganar = minim.loadSample("ganar.mp3", 521);
  perder = minim.loadSample("perder.mp3", 521);
  perder_vida = minim.loadSample("perder_vida.mp3", 521);

  sonido = minim.loadFile("sonido.mp3", 2048);
  sonido2 = minim.loadFile("sonido2.mp3", 2048);

  imagenPortada = loadImage("Recurso 212.png");
  imagenFondo = loadImage("fondo.png");
  imagenPelota = loadImage("pelota.png");
  imagenObstaculo = loadImage("obstaculo.png");
  imagenPared = loadImage("pared.png");
  imagenTriArI = loadImage("triArI.png");
  imagenTriArD = loadImage("triArD.png");
  imagenTriAbI = loadImage("triAbI.png");
  imagenTriAbD = loadImage("triAbD.png");
  imagenPaleta = loadImage("paleta.png");

  imagenFondoRoja = loadImage("fondoRoja.png");
  imagenObstaculoRoja = loadImage("obstaculoRoja.png");
  imagenParedRoja = loadImage("paredRoja.png");
  imagenTriArIRojo = loadImage("triArIRojo.png");
  imagenTriArDRojo = loadImage("triArDRojo.png");
  imagenTriAbIRojo = loadImage("triAbIRojo.png");
  imagenTriAbDRojo = loadImage("triAbDRojo.png");
  imagenPaletaRoja = loadImage("paletaRoja.png");


  fuente = loadFont("fuente.vlw");
  textFont(fuente);


  mundo = new FWorld();
  mundo.setEdges(-5, -5, width+5, height+5);
  mundo.setGravity(0, 1000); //gravedad

  sonido.loop(); //musica de fondo

  textSize(30);
  textAlign(CENTER);
  cartel = "";



  obstaculos = new ArrayList <Obstaculo> ();
  for (int i = 0; i < 3; i++)
  {
    Obstaculo m = new Obstaculo(50);
    //world.add(m);
    obstaculos.add(m);
  }
  obstaculos.get(0).inicializar(floor(random(95, 200)), floor(random(200, 400)));
  obstaculos.get(1).inicializar(floor(random(220, 360)), floor(random(200, 400)));
  obstaculos.get(2).inicializar(floor(random(380, 500)), floor(random(200, 400)) );

  brillos = new ArrayList <Obstaculo> ();
  for (int i = 0; i < 3; i++)
  {
    Obstaculo b = new Obstaculo(diametro);
    //world.add(m);
    brillos.add(b);
  }
  brillos.get(0).dibujarBrillo(obstaculos.get(0).getX(), obstaculos.get(0).getY());
  brillos.get(1).dibujarBrillo(obstaculos.get(1).getX(), obstaculos.get(1).getY());
  brillos.get(2).dibujarBrillo(obstaculos.get(2).getX(), obstaculos.get(2).getY());

  piso = new Plataforma(width, 10);
  piso.inicializar(width / 2, height-5);
  mundo.add(piso);

  //TRIANGULOS

  rebotes = new ArrayList <Triangulos> ();
  for (int i = 0; i < 4; i++)
  {
    Triangulos m = new Triangulos();
    //world.add(m);
    rebotes.add(m);
  }
  rebotes.get(0).inicializar(525, 0, 600, 0, 600, 75);
  rebotes.get(1).inicializar(0, 0, 75, 0, 0, 75);
  rebotes.get(2).inicializarAb(150, 600, 60, 600, 60, 475);
  rebotes.get(3).inicializarAb(450, 600, 540, 600, 540, 475);

  //FIN TRIANGULOS



  pared = new ArrayList <Cajas> ();
  for (int i = 0; i < 2; i++) //cantidad 
  {
    Cajas p = new Cajas(5, 600); //tamaño
    p.inicializar(i * 480 + 60, 480); //ubicacion desde el centro
    mundo.add(p);
    pared.add(p);
  }

  engranaje01 = new Pelota(2);
  engranaje01.inicializarEngranaje(265, 735);
  mundo.add(engranaje01);

  engranaje02 = new Pelota(2);
  engranaje02.inicializarEngranaje(335, 735);
  mundo.add(engranaje02);


  //der
  paleta1 = new Cajas(160, 20);
  paleta1.inicializarPaletas(400, 675); //ubicacion y rotacion
  mundo.add(paleta1);

  //izq
  paleta2 = new Cajas(160, 20);
  paleta2.inicializarPaletas(200, 675); //ubicacion y rotacion
  mundo.add(paleta2);

  cadena1 = new FMouseJoint (paleta1, 465, 675);
  mundo.add(cadena1);

  cadena2 = new FMouseJoint (paleta2, 135, 675);
  mundo.add(cadena2);
}

void draw() {
  if (estado == "portada") {
    background(imagenPortada);

    pushStyle();
    /*noSmooth();
     pushMatrix();
     scale(2, 2);
     popMatrix();
     */
    textSize(18);
    textLeading(66);
    text("Martin Fortain - Fausto Molina - Jazmín Gonzalez", width / 2, height / 2 - 40);
    textSize(25);
    textLeading(40);
    text(puntos + " puntos para ganar\n\nENTER para jugar", width / 2, height / 2 + 120);
    popStyle();
  } else if (estado == "juego") {
    if (vidas > 1) {
      background(imagenFondo);
    } else {
      background(imagenFondoRoja);
    }
    //fill(50, 100, 150);
    //rect(0, 0, width, height);


    paleta1.actualizarPaletaDer();
    paleta2.actualizarPaletaIzq();



    if (puntaje == 7 && bonus == null) {
      bonus = new Bonus (30);
      bonus.dibujar(random(145, 500), random(100, 600));
      mundo.add(bonus);
    }


    mundo.step();
    mundo.draw();





    if (vidas == 1) {
      //background(imagenFondoRoja);
      pushStyle();
      fill(255, 64, 0);
      textAlign(LEFT);
      text("PUNTAJE " + puntaje, 75, 40);
      text("VIDAS "+ vidas, 400, 40);
      popStyle();
      pushStyle();
      brillos.get(0).aroRojo();
      brillos.get(1).aroRojo();
      brillos.get(2).aroRojo();
      pared.get(0).paredRoja();
      pared.get(1).paredRoja();
      paleta1.paletaRoja();
      paleta2.paletaRoja(); 
      obstaculos.get(0).obstaculoRojo();
      obstaculos.get(1).obstaculoRojo();
      obstaculos.get(2).obstaculoRojo();
      image(imagenTriArDRojo, 525, 0);
      image(imagenTriArIRojo, 0, 0);
      image(imagenTriAbDRojo, 450, 475);
      image(imagenTriAbIRojo, 60, 475);
      popStyle();
    } else {
      pushStyle();
      fill(0, 128, 255);
      textAlign(LEFT);
      text("PUNTAJE " + puntaje, 75, 40);
      text("VIDAS "+ vidas, 400, 40);
      popStyle();
      pushStyle();
      paleta1.paletaAzul();
      paleta2.paletaAzul();
      brillos.get(0).aroAzul();
      brillos.get(1).aroAzul();
      brillos.get(2).aroAzul();
      pared.get(0).paredAzul();
      pared.get(1).paredAzul();
      obstaculos.get(0).obstaculoAzul();
      obstaculos.get(1).obstaculoAzul();
      obstaculos.get(2).obstaculoAzul();
      image(imagenTriArD, 525, 0);
      image(imagenTriArI, 0, 0);
      image(imagenTriAbD, 450, 475);
      image(imagenTriAbI, 60, 475);
      popStyle();
    }




    if (estado == "fin")
    {
      pushStyle();
      background(0, 0, 0);
      noSmooth();
      textSize(74);
      textLeading(66);
      text(cartel, width / 2, height / 2 - 10);
      textSize(40);
      textLeading(40);
      text("PRESIONA ENTER", width / 2, height / 2 + 100);
      popStyle();
    }
  }


  println(estado, mouseX, mouseY);
} 

void keyPressed() {

  if (estado == "portada") {
    sonido.loop();
    if ( key == ENTER) {
      estado = "juego";
      for (int i=0; i < rebotes.size(); i++)
      {
        rebotes.get(i).resetear();
        sonido.pause();
        sonido2.loop();
      }

      for (int i=0; i < brillos.size(); i++)
      {
        brillos.get(i).aniadir();
      }

      for (int i=0; i < obstaculos.size(); i++)
      {
        obstaculos.get(i).aniadir();
      }




      puntaje = 0;
    }
  } else if (estado == "juego") {
    if (keyCode == RIGHT) {
      paleta1.derPresionado = true;
      paleta.trigger(); // sonido paleta
    }

    if (keyCode == LEFT) {
      paleta2.izqPresionado = true;
      paleta.trigger(); //sonido paleta
    }
    if (key == ' ' ) {
      if (pelota == null) {
        pelota = new Pelota(30);
        pelota.inicializar(570, 700);
        pelota.setName ("pelota");
        mundo.add(pelota);
        salida.trigger(); //sonido salida
      }
    }
  } else if (estado =="fin") {
    if (key == ENTER) {
      estado = "portada";
      vidas=3;
      sonido2.pause();
      sonido.loop();
    }
  }
}
void keyReleased() {
  if (estado == "juego") {
    if (keyCode == RIGHT) {
      paleta1.derPresionado = false;
    }

    if (keyCode == LEFT) {
      paleta2.izqPresionado = false;
    }
  }
}

void contactStarted(FContact contact)
{
  FBody _body1 = contact.getBody1();
  FBody _body2 = contact.getBody2();

  //perder

  if (_body1.getName() == "pelota" && _body2.getName() == "plataforma"  || (_body2.getName() == "pelota" && _body1.getName() == "plataforma")) {
    /*estado= "fin";
     cartel = "PERDISTE";*/
    vidas--;
    mundo.remove(pelota);
    if (vidas != 0)
      perder_vida.trigger();
    pelota=null;
    if (vidas == 0) {
      perder.trigger();
      estado= "fin";
      cartel = "PERDISTE";
      mundo.remove(bonus);
      bonus=null;
      paleta1.derPresionado = false;
      paleta2.derPresionado = false;
    }
  }

  // ganar//
  if (puntaje >= puntos) {
    estado= "fin";
    cartel = "GANASTE";
    mundo.remove(pelota);
    ganar.trigger();
    mundo.remove(bonus);
    bonus=null;
    pelota=null;
  }




  //sumar puntos
  if (_body1.getName() == "pelota" && _body2.getName() == "obstaculo"  )
  {
    ((Obstaculo)_body2).sumarPunto();
    // ((Obstaculo)_body2).crecerBrillo();
    choque.trigger();
  } else if (_body2.getName() == "pelota" && _body1.getName() == "obstaculo" )
  {
    ((Obstaculo) _body1).sumarPunto();
    //   ((Obstaculo)_body1).crecerBrillo();
    choque.trigger();
  }

  if (_body1.getName() == "pelota" &&  _body2.getName() == "rebotes")
  {
    ((Triangulos)_body2).sumarPunto();
    choque2.trigger();
  } else if (_body2.getName() == "pelota" &&  _body1.getName() == "rebotes")
  {
    ((Triangulos) _body1).sumarPunto();
    choque2.trigger();
  }

  //brillo
  if (_body1.getName() == "pelota" && _body2.getName() == "brillo"  )
  {
    ((Obstaculo)_body2).crecerBrillo();
  } else if (_body2.getName() == "pelota" &&  _body1.getName() == "brillo")
  {
    ((Obstaculo)_body1).crecerBrillo();
  }

  //sumarBonus
  if (_body1.getName() == "pelota" && _body2.getName() == "bonus"  )
  {
    ((Bonus)_body2).sumarBonus();
    moneda.trigger();
    bonus=null;
  } else if (_body2.getName() == "pelota" && _body1.getName() == "bonus" )
  {
    ((Bonus) _body1).sumarBonus();
    moneda.trigger();
    bonus=null;
  }
} 
