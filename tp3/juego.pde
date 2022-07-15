void juego() {
  if (pant1) {
    image(fondos[2], 0, 0);
    for (int i=1; i<10; i++) {
      for (int e=3; e<6; e++) {
        if (colision[i-1][e-3]  == false) {
          rect(i*ubi1, e*ubi2, 60, 20);
        }
        if (dist(i*ubi1, e*ubi2, bolaX, bolaY)<30 && colision[i-1][e-3] == false) {
          colision[i-1][e-3] = true;
          vely=4;
        }
        numeroDeRect++;
        if (e<= 2&& i<=2) {
          image(fondos[3], 220, 180);
        }
      }
    }
    if ((bolaY>mov2)&&(bolaY<600)&&(bolaX>mov)&&(bolaX<mov+ancho)) {
      rect(mov, mov2, ancho, 15);
      ellipse(bolaX, bolaY, tamX, tamY);
      vely=-4;
    }
    if (bolaX>=750-tamX/2) {
      velx=-4;
    }
    if (bolaX<=70-tamX/2) {
      velx=4;
    }
    ellipse(bolaX, bolaY, tamX, tamY);
    bolaX+=velx;
    bolaY+=vely;
    rect(mov, 580, ancho, 15);
    image(fondos[6], 0, 0);
    image(fondos[7], pmov, 580);
  }
}
void carteles() {
  //creditos
  if (creditos) {
    image(fondos[5], 160, 130);
  }

  //victoria
  if (victoria) {
    if (bolaY<=81+tamY/2) {

      image(fondos[3], 220, 180);
    }
  }
  //derrota
  if (derrota) {
    if ((bolaY>=height)) {
      image(fondos[4], 220, 180);
    }
  }
}
