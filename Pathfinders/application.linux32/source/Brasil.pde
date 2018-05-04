class CBrasil implements Carta{
  int ataque;
  int danio;
  int rep;
  CBrasil(int ataque_, int danio_, int rep_) {
    ataque = ataque_;
    danio = danio_;
    rep = rep_;
  }
  
  void representacion() {
    switch(rep) {
      case 2:
      image(brasil, 588, 175, 162, 330);
      break;
    }
  }
  
  void personaje_1() {
    switch(seleccion_personaje_1) {
      case 2:
      image(brasil, 324, 175, 162, 330);
      break;
    }
  }
  
  void personaje_2() {
    switch(seleccion_personaje_2) {
      case 2:
      image(brasil, 852, 175, 162, 330);
      break;
    }
  }
  
  int danio(){
    return danio;
  }
}
