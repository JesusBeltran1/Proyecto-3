class CJapon implements Carta{
  int ataque;
  int danio;
  int rep;
  CJapon(int ataque_, int danio_, int rep_) {
    ataque = ataque_;
    danio = danio_;
    rep = rep_;
  }
  
void representacion() {
    switch(rep) {
    case 0:
      image (japon, 60, 175, 162, 330);
      break;
    }
  }
  
  void personaje_1() {
    switch(seleccion_personaje_1) {
    case 0:
      image (japon, 324, 175, 162, 330);
      break;
    }
  }

  void personaje_2() {
    switch(seleccion_personaje_2) {
    case 0:
      image (japon, 852, 175, 162, 330);
      break;
    }
  }
  int danio(){
    return danio;
  }
}
