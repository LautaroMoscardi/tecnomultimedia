void mouseClicked () {
  //inicio
  if (pantalla == 0) {
    if (mouseX > 233 && mouseY > 377 && mouseX < 369 && mouseY < 422) {
      pantalla = 1;
      //creditos
    }if (mouseX > 233 && mouseY > 459 && mouseX < 369 && mouseY < 509){
    pantalla= 11;
    }
  } 
  //vida normal
  if (pantalla == 1 ) {
    if (mouseX > 565 && mouseY > 570 && mouseX <565+30 && mouseY < 570+20) {
      pantalla = 2;
    }
    if (mouseX > 5 && mouseY > 570 && mouseX <5+30 && mouseY < 570+20) {
      pantalla = 0;
    }
  }
  //transforma
  if (pantalla == 2 ) {
    if (mouseX > 555 && mouseY > 560 && mouseX <555+30 && mouseY < 560+20) {
      pantalla = 4;
    }
    if (mouseX > 5 && mouseY > 570 && mouseX <5+30 && mouseY < 570+20) {
      pantalla = 3;
    }  
}
  //enfermedad
  if (pantalla == 3) {
  }
  //trata de incorporarse
  if (pantalla == 4) {
    if (mouseX > 565 && mouseY > 570 && mouseX <565+30 && mouseY < 570+20) {
      pantalla = 5;
    }
  }
   if (pantalla == 5) {if (mouseX > 555 && mouseY > 560 && mouseX <555+30 && mouseY < 560+20) {
      pantalla = 6 ;
    }
    if (mouseX > 5&& mouseY > 570 && mouseX <5+30 && mouseY < 570+20) {
      pantalla = 7;}
     
  }
  //aceptan su nueva forma

  
  //la hermana
  if (pantalla == 7) {
    if (mouseX > 565 && mouseY > 570 && mouseX <565+30 && mouseY < 570+20) {
      pantalla = 8;
    }
  }
  //se debilita
  if (pantalla == 8) {if (mouseX > 565 && mouseY > 560 && mouseX <565+30 && mouseY < 560+20) {
      pantalla = 9;
    }
  }
  //muere
  if (pantalla == 9) {
  if (mouseX > 5&& mouseY > 570 && mouseX <5+30 && mouseY < 570+20) {
      pantalla = 0;}
  }
  if (pantalla == 11 ) {
  if (mouseX > 233 && mouseY > 377 && mouseX < 369 && mouseY < 422) {
      pantalla = 0;
  }}
}
