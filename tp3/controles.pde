void mouse() {
  if ((mouseX > 265) && (mouseX < 265 +250) && (mouseY > 350) && (mouseY <350 + 50)) { 
    //funciones con parametros
    contador++;
    if(contador==2){
    pan0=false;
    pant1=true;
    }
  }
  if ((mouseX > 245) && (mouseX < 245 +305) && (mouseY > 450) && (mouseY <450 + 40)) { 
    contador++;
    if(contador==2){
creditos=true;
    }
  }
}

void teclas() {

  if (key == 'r') {
    bolaX=500;
    bolaY=300;
    derrota=false;
    derrota=true;
  }
  if (key == 'z') {
    bolaX=500;
    bolaY=300;
    pan0=true;
    pant1=false;
    victoria=false;
    victoria=true;
    creditos=false;
    contador=1;
  }

  if (keyCode == LEFT) {
    mov-=velop*2;
    pmov-=velop*2;
  }
  if (keyCode == RIGHT) {
    mov+=velop*2;
    pmov+=velop*2;
  }
}
