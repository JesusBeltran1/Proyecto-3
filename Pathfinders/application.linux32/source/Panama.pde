class CPanama implements Carta{
  int ataque;
  int danio;
  int rep;
  CPanama(int ataque_, int danio_, int rep_) {
    ataque = ataque_;
    danio = danio_;
    rep = rep_;
  }
  
  void representacion() {
    switch(rep) {
      case 3:
      image(panama, 852, 175, 162, 330);
      break;
    }
  }
  
  void personaje_1() {
    switch(seleccion_personaje_1) {
      case 3:
      image(panama, 324, 175, 162, 330);
      break;
    }
  }
  
  void personaje_2() {
    switch(seleccion_personaje_2) {
      case 3:
      image(panama, 852, 175, 162, 330);
      break;
    }
  }
  
  int danio(){
    return danio;
  }
}
