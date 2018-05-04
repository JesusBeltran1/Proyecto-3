import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PFont titulo_comienzo, seleccion, texto_de_danio;
int pantalla = 0;
boolean sj1 = false;
boolean sj2 = false;
int turno = 1;
int danio_sj1, danio_sj2, seleccion_personaje_1, seleccion_personaje_2;
PImage ganador, japon, peru, brasil, panama, mexico, pantalla_de_inicio, pantalla_de_seleccion, pantalla_de_pelea;

Minim sonido;
AudioSample musica_epica;

Carta sujeto1a;
Carta sujeto2a;
Carta sujeto3a;
Carta sujeto4a;
Carta sujeto5a;

Carta sujeto1b;
Carta sujeto2b;
Carta sujeto3b;
Carta sujeto4b;
Carta sujeto5b;

Carta jugador1;
Carta jugador2;

void setup() {
  size(1360, 700);
  sonido = new Minim(this);
  musica_epica = sonido.loadSample("THE BEST EPIC MUSIC  LA MEJOR MÚSICA ÉPICA2.mp3", 1024);
  titulo_comienzo = loadFont("ARDARLING-48.vlw");
  seleccion = loadFont("ARDARLING-48.vlw");
  texto_de_danio = loadFont("Calibri-LightItalic-48.vlw");
  ganador = loadImage("Ganador.png");
  japon = loadImage("Japón.png");
  peru = loadImage("Perú.png");
  brasil = loadImage("Brasil.png");
  panama = loadImage("Panamá.png");
  mexico = loadImage("México.png");
  pantalla_de_inicio = loadImage("Pantalla de inicio.png");
  pantalla_de_seleccion = loadImage("Pantalla de selección.png");
  pantalla_de_pelea = loadImage("Pantalla de pelea.png");
  
  sujeto1a = new CJapon(20, 1, 0);
  sujeto2a = new CPeru(15, 1, 1);
  sujeto3a = new CBrasil(20, 1, 2);
  sujeto4a = new CPanama(15, 1, 3);
  sujeto5a = new CMexico(20, 1, 4);

  sujeto1b = new CJapon(20, 1, 0);
  sujeto2b = new CPeru(15, 1, 1);
  sujeto3b = new CBrasil(20, 1, 2);
  sujeto4b = new CPanama(15, 1, 3);
  sujeto5b = new CMexico(20, 1, 4);
}

void draw() {
  switch(pantalla) {
    case 0:
     intro();
    break;
    case 1:
     seleccion();
    break;
    case 2:
     pelea();
    break;
    case 3:
     fin();
    break;
  } 
}

void intro() {
  pushMatrix();
  image(pantalla_de_inicio, 0, 0, 1360, 700);
  textSize(55);
  fill(random(255), random(255), random(255));
  frameRate(15);
  textFont(titulo_comienzo);
  textAlign(LEFT, TOP);
  text("Presione  [A]  para comenzar", 355, 445);
  popMatrix();

  keyPressed();
  if (key == 'a' || key == 'A') {
      musica_epica.trigger();
    pantalla = 1;
  }
}

void seleccion() {
  image(pantalla_de_seleccion, 0, 0, 1360, 700);
    noStroke();
  textFont(seleccion);
  textSize(55);
  textAlign(CENTER, TOP);
  //B
  fill(random(255), random(255), random(255));
  frameRate(15);
  text('B', 142, 520);
  //C
  fill(random(255), random(255), random(255));
  frameRate(15);
  text('C', 406, 520);
  //D
  fill(random(255), random(255), random(255));
  frameRate(15);
  text('D', 670, 520);
  //E
  fill(random(255), random(255), random(255));
  frameRate(15);
  text('E', 934, 520);
  //F
  fill(random(255), random(255), random(255));
  frameRate(15);
  text('F', 1198, 520);
  
  //G
  fill(random(255), random(255), random(255));
  frameRate(15);
  text('G', 142, 580);
  //H
  fill(random(255), random(255), random(255));
  frameRate(15);
  text('H', 406, 580);
  //I
  fill(random(255), random(255), random(255));
  frameRate(15);
  text('I', 670, 580);
  //J
  fill(random(255), random(255), random(255));
  frameRate(15);
  text('J', 934, 580);
  //K
  fill(random(255), random(255), random(255));
  frameRate(15);
  text('K', 1198, 580);
  
  sujeto1a.representacion();
  sujeto2a.representacion();
  sujeto3a.representacion();
  sujeto4a.representacion();
  sujeto5a.representacion();
  
  if (sj1 && sj2) {
    pantalla = 2;
    turno += 1;
  }
  
  if (keyPressed) {
    switch(key) {
    case 'b':
      jugador1 = sujeto1a;
      danio_sj1 = jugador1.danio();
      sj1 = true;
      break;
      
      case 'B':
      jugador1 = sujeto1a;
      danio_sj1 = jugador1.danio();
      sj1 = true;
      break;
      
    case 'c':
      jugador1 = sujeto2a;
      danio_sj1 = jugador1.danio();
      sj1 = true;
      break;
      
      case 'C':
      jugador1 = sujeto2a;
      danio_sj1 = jugador1.danio();
      sj1 = true;
      break;
      
    case 'd':
      jugador1 = sujeto3a;
      danio_sj1 = jugador1.danio();
      sj1 = true;
      break;
      
      case 'D':
      jugador1 = sujeto3a;
      danio_sj1 = jugador1.danio();
      sj1 = true;
      break;
      
    case 'e':
      jugador1 = sujeto4a;
      danio_sj1 = jugador1.danio();
      sj1 = true;
      break;
      
      case 'E':
      jugador1 = sujeto4a;
      danio_sj1 = jugador1.danio();
      sj1 = true;
      break;
      
    case 'f':
      jugador1 = sujeto5a;
      danio_sj1 = jugador1.danio();
      sj1 = true;
      break;
      
      case 'F':
      jugador1 = sujeto5a;
      danio_sj1 = jugador1.danio();
      sj1 = true;
      break;
      
    case 'g':
      jugador2 = sujeto1b;
      danio_sj2 = jugador2.danio();
      sj2 = true;
      break;
      
      case 'G':
      jugador2 = sujeto1b;
      danio_sj2 = jugador2.danio();
      sj2 = true;
      break;
      
    case 'h':
      jugador2 = sujeto2b;
      danio_sj2 = jugador2.danio();
      sj2 = true;
      break;
      
      case 'H':
      jugador2 = sujeto2b;
      danio_sj2 = jugador2.danio();
      sj2 = true;
      break;
      
    case 'i':
      jugador2 = sujeto3b;
      danio_sj2 = jugador2.danio();
      sj2 = true;
      break;
      
      case 'I':
      jugador2 = sujeto3b;
      danio_sj2 = jugador2.danio();
      sj2 = true;
      break;
      
    case 'j':
      jugador2 = sujeto4b;
      danio_sj2 = jugador2.danio();
      sj2 = true;
      break;
      
      case 'J':
      jugador2 = sujeto4b;
      danio_sj2 = jugador2.danio();
      sj2 = true;
      break;
      
    case 'k':
      jugador2 = sujeto5b;
      danio_sj2 = jugador2.danio();
      sj2 = true;
      break;
      
      case 'K':
      jugador2 = sujeto5b;
      danio_sj2 = jugador2.danio();
      sj2 = true;
      break;
    }
  }
 }

void pelea() {
  image(pantalla_de_pelea, 0, 0, 1360, 700);
  
    if (jugador1 == sujeto1a) {
    seleccion_personaje_1 = 0;
    sujeto1a.personaje_1();
  }
  
  if (jugador1 == sujeto2a) {
    seleccion_personaje_1 = 1;
    sujeto2a.personaje_1();
  }
  
  if (jugador1 == sujeto3a) {
    seleccion_personaje_1 = 2;
    sujeto3a.personaje_1();
  }
  
  if (jugador1 == sujeto4a) {
    seleccion_personaje_1 = 3;
    sujeto4a.personaje_1();
  }
  
  if (jugador1 == sujeto5a) {
    seleccion_personaje_1 = 4;
    sujeto5a.personaje_1();
  }
  
  //Jugador 2
  if (jugador2 == sujeto1b) {
    seleccion_personaje_2 = 0;
    sujeto1a.personaje_2();
  }
  
  if (jugador2 == sujeto2b) {
    seleccion_personaje_2 = 1;
    sujeto2a.personaje_2();
  }
  
  if (jugador2 == sujeto3b) {
    seleccion_personaje_2 = 2;
    sujeto3a.personaje_2();
  }
  
  if (jugador2 == sujeto4b) {
    seleccion_personaje_2 = 3;
    sujeto4a.personaje_2();
  }
  
  if (jugador2 == sujeto5b) {
    seleccion_personaje_2 = 4;
    sujeto5a.personaje_2();
  }

  switch (turno) {
  case 1:
    keyPressed();
    if ((key == 'l' || key == 'L') && turno == 1) {
      danio_sj2 += 10;
      turno = 2;
    }
    break;
    
  case 2:
    keyPressed();
    if ((key=='m') || (key == 'M') && turno == 2) {
      danio_sj1 += 10;
      turno = 1;
    }
    break;
  }

  //Barra de Daño del J1
  pushMatrix();
  fill(#7200AD);
  rect(40, 200, (danio_sj1*1), 30);
  popMatrix();
  
  if (danio_sj1 >= 100 || danio_sj2 >= 100) {
    pantalla = 3;
  }

  //Barra de Daño del J2
  pushMatrix();
  fill(#7200AD);
  rect(1120, 200, (danio_sj2*1), 30);
  popMatrix();
  
  if (danio_sj1 >= 100 || danio_sj2 >= 100) {
    pantalla = 3;
  }
  
  textSize(100);
  textFont(texto_de_danio);
  fill(random(255), random(255), random(255));
  frameRate(15);
  textAlign(LEFT, TOP);
  text("J1 Ataca con L", 20, 632);
  fill(random(255), random(255), random(255));
  frameRate(15);
  text("J2 Ataca con M", 1000, 632);
}

void fin() {
  if (danio_sj1 >= 100) {
    pushMatrix();
    image(ganador, 0, 0, 1360, 700);
    textSize(100);
    fill(random(255), random(255), random(255));
    noStroke();
    textFont(texto_de_danio);
    frameRate(15);
    text("Jugador 2", 600, 410);
    fill(random(255), random(255), random(255));
  frameRate(15);
    text("Presione  [N]  para volver a iniciar", 540, 610);
    popMatrix();
  }
  
  if (danio_sj2 >= 100) {
    pushMatrix();
    image(ganador, 0, 0, 1360, 700);
    textSize(100);
    fill(random(255), random(255), random(255));
    noStroke();
    textFont(texto_de_danio);
    frameRate(15);
    text("Jugador 1", 600, 410);
    fill(random(255), random(255), random(255));
    frameRate(15);
    text("Presione  [N]  para volver a iniciar", 540, 610);
    popMatrix();
  }
  
  keyPressed();
  if (key == 'n' || key == 'N') {
    pantalla = 1;
    sj1 = false;
    sj2 = false;
    turno = 1;
    danio_sj1 = 0;
    danio_sj2= 0;
  }
}
