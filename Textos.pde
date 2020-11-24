class Textos {
  int cantidadPantallas = 22;
  String textosPantallas [][];
  String textosPantallaBotones [][];

  Textos() {
    textosPantallas = new String [cantidadPantallas][2];
    textosPantallaBotones = new String [cantidadPantallas][2];

    inicializarTextosPantallas();
    inicializarTextosBotones();
  }

  void inicializarTextosPantallas() {
    textosPantallas [0] [0] = "La Isla del Tesoro";
    textosPantallas [0] [1] = "";

    textosPantallas [1] [0] = "Jim Hawkins es un niño que vive y ayuda \n"+"en la posada de su madre y de su difunto padre";
    textosPantallas [1] [1] = "";

    textosPantallas [2] [0] = "Una mañana llega un viejo bucanero llamado Billy Bones,\n"+
      "aunque él se hacía llamar capitan.\n"+
      "Pide hospedaje, porque el lugar le parece tranquilo,\n"+
      "para esconderse de unos malvados piratas que lo persiguen";
    textosPantallas [2] [1] = "Quieres hospedar a Billy";

    textosPantallas [3] [0] = "Billy te ofrece dinero a cambio de que mantengas los ojos abiertos y\n"+
      "que le avises si aparece un pirata con una sola pierna";
    textosPantallas [3] [1] = "";

    textosPantallas [4] [0] = "A Billy le entregan una carta con un punto negro,\n"+
      "que entre los piratas eso significa la sentencia de muerte.\n"+
      "Al ver de esto el corazón de Billy se detiene y muere";
    textosPantallas [4] [1] = "";

    textosPantallas [5] [0] = "Al morir Billy, en tu posada queda su crofre con todas sus pertenencias";
    textosPantallas [5] [1] = "Jim debe abrir la cerradura para acceder al interior del cofre";

    textosPantallas [6] [0] = "En el interior del cofre descubres que hay\n"+
      "una bolsa con oro y un sobre con un mapa";
    textosPantallas [6] [1] = "Que haces con el conteindo del cofre?";

    textosPantallas [7] [0] = "Cuando le llevas el mapa al Dr. Livesey,\n"+
      "este insiste en que inicien la busqueda del tesoro.\n"+
      "Para ello alquilan un barco llamado La Española y\n"+
      "una tripulación que se encarga de reclutar un cocinero llamado John Silver";
    textosPantallas [7] [1] = "";

    textosPantallas [8] [0] = "Escondido en un barril de manzanas,\n"+
      "escuchas a Silver hablando con parte de su tripulación.\n"+
      "Descubres que Silver es un viejo pirata malvado que reclutó a su antigua tripulación\n"+
      "y planean traicionarlos y quedarse con el tesoro para ellos";
    textosPantallas [8] [1] = "Que haces al escuchar a Silver?";

    textosPantallas [9] [0] = "Luego de que Silver se vaya de al lado del barril,\n"+
      "vas corriendo a encontrarte con el Dr. Livesey, Trelawney y el Capitan,\n"+
      "para contarle sobre los planes de Silver";
    textosPantallas [9] [1] = "Que hacen con Silver?";

    textosPantallas [10] [0] = "Una vez que llegan a la isla, desembarcan en busca del tesoro";
    textosPantallas [10] [1] = "";

    textosPantallas [11] [0] = "Jim se va a explorar la isla y\n"+
      "se encuentra con un viejo pirata llamado Ben Gunn\n"+
      "que quedó naufragando en la isla.\n"+
      "Él es el unico que sabe la ubicación exacta del tesoro";
    textosPantallas [11] [1] = "Matas a Ben o lo escuchas?";

    textosPantallas [12] [0] = "Al escuchar a Ben lo llevas con la tripulación y\n"+
      "Ben los guía hacia el tesoro";
    textosPantallas [12] [1] = "Que hacen con Ben y el tesoro?";

    textosPantallas [13] [0] = "Bien Hecho!!!";

    textosPantallas [13] [1] = "Haz encontrado el tesoro y te lo llevas a casa\n"+
      "Espero que hayas disfrutado esta aventura";
    ;

    textosPantallas [14] [0] = "Fin de la Historia";
    textosPantallas [14] [1] = "Al no aceptar hospedar a Billy\n"+
      "tu vida sigue normalmente \n"+
      "sin un mapa con un tesoro que buscar";

    textosPantallas [15] [0] = "Fin de la Historia";
    textosPantallas [15] [1] = "Al no poder abrir el cofre no descubres el contenido de su interior,\n"+
      "por ende te quedas sin mapa y sin oro";

    textosPantallas [16] [0] = "Fin de la Historia";
    textosPantallas [16] [1] = "La avaricia reina sobre tu espíritu aventurero y\n"+
      "descartas el mapa que te lleva a muchas mas riquezas";

    textosPantallas [17] [0] = "Fin de la Historia";
    textosPantallas [17] [1] = "Te lanzas a atacar a Silver por traidor,\n"+
      "pero él es mas fuerte y grande que tu,\n"+
      "con un movimiento audaz te esquiva y\n"+
      "te mata de una puñalada";

    textosPantallas [18] [0] = "Fin de la Historia";
    textosPantallas [18] [1] = "Al matar a Silver, su tripulación se rebela\n"+"y los mata";

    textosPantallas [19] [0] = "Fin de la Historia";
    textosPantallas [19] [1] = "Matas a Ben al no confiar en él,\n"+
      "pero te quedas sin tesoro,\n"+
      "porque el unico que sabia donde estaba era él";

    textosPantallas [20] [0] = "Fin de la Historia";
    textosPantallas [20] [1] = "Al intentar matar a Ben,\n"+"este los esquiva y activa una trampa\n"+"que los deja atrapados en la cueva,\n"+"mientras él escapa";

    textosPantallas [21] [0] = "La Isla del Tesoro\n"+
      "\n"+
      "Escrita por:\n"+
      "Robert Louis Stevenson\n"+
      "\n"+
      "Trabajo Práctico 3\n"+
      "Fausto Molina\n"+
      "Imagenes extraídas de la pelicula homónima\n"+
      "1972\n"+
      "Dirigida por:\n"+
      "John Hough y Andrea Bianchi";
    textosPantallas [21] [1] = "";
  }

  void inicializarTextosBotones() {
    textosPantallaBotones [0] [0] = "Creditos";
    textosPantallaBotones [0] [1] = "Iniciar";

    textosPantallaBotones [1] [0] = "Click para continuar";
    textosPantallaBotones [1] [1] = "";

    textosPantallaBotones [2] [0] = "Sí";
    textosPantallaBotones [2] [1] = "No";

    textosPantallaBotones [3] [0] = "Click para continuar";
    textosPantallaBotones [3] [1] = "";

    textosPantallaBotones [4] [0] = "Click para continuar";
    textosPantallaBotones [4] [1] = "";

    textosPantallaBotones [5] [0] = "Revisar";
    textosPantallaBotones [5] [1] = "Tirar";

    textosPantallaBotones [6] [0] = "Guardar el oro y tirar el mapa";
    textosPantallaBotones [6] [1] = "Llevar el mapa al Dr. Livesey";

    textosPantallaBotones [7] [0] = "Click para continuar";
    textosPantallaBotones [7] [1] = "";

    textosPantallaBotones [8] [0] = "Lo atacas";
    textosPantallaBotones [8] [1] = "Seguís escuchando a escondidas";

    textosPantallaBotones [9] [0] = "Lo matan";
    textosPantallaBotones [9] [1] = "Le tienden una trampa";

    textosPantallaBotones [10] [0] = "Click para continuar";
    textosPantallaBotones [10] [1] = "";

    textosPantallaBotones [11] [0] = "Escuchar a Ben";
    textosPantallaBotones [11] [1] = "Matar a Ben";

    textosPantallaBotones [12] [0] = "Matan a Ben y se van con el tesoro";
    textosPantallaBotones [12] [1] = "Se vuelven todos con el tesoro";

    textosPantallaBotones [13] [0] = "Click para ir a los Créditos";
    textosPantallaBotones [13] [1] = "";

    textosPantallaBotones [14] [0] = "Click para volver a empezar";
    textosPantallaBotones [14] [1] = "";

    textosPantallaBotones [15] [0] = "Click para volver a empezar";
    textosPantallaBotones [15] [1] = "";

    textosPantallaBotones [16] [0] = "Click para volver a empezar";
    textosPantallaBotones [16] [1] = "";

    textosPantallaBotones [16] [0] = "Click para volver a empezar";
    textosPantallaBotones [16] [1] = "";

    textosPantallaBotones [17] [0] = "Click para volver a empezar";
    textosPantallaBotones [17] [1] = "";

    textosPantallaBotones [18] [0] = "Click para volver a empezar";
    textosPantallaBotones [18] [1] = "";

    textosPantallaBotones [19] [0] = "Click para volver a empezar";
    textosPantallaBotones [19] [1] = "";

    textosPantallaBotones [20] [0] = "Click para volver a empezar";
    textosPantallaBotones [20] [1] = "";

    textosPantallaBotones [21] [0] = "Click para volver a la Pantalla Principal";
    textosPantallaBotones [21] [1] = "";
  }

  String getTextoParaPantalla(int pantalla, int texto) {
    return textosPantallas[pantalla][texto];
  }

  String getTextoParaPantallaBoton(int pantalla, int boton) {
    return textosPantallaBotones[pantalla][boton];
  }

  void creditos(int p_posY) {
    text(textosPantallas[21][0], 400, p_posY);
    text(textosPantallas[21][1], 400, p_posY);
    if (p_posY >= 200) {
      text(textosPantallaBotones[21][0], 400, 500);
    }
  }
}
