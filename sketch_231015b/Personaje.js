class Personaje {
  constructor() {
    this.posX = 350;
    this.foto = loadImage();
    this.vida =1;
  }

  dibujar() {
    if (this.vida==1) {
      rect(this.posX, 580, 120, 15, 15);
    }

    if (this.vida==2) {
      push();
      fill(255,0,0);
      rect(this.posX, 580, 120, 15, 15);
      pop();
    }
  }


  moverDerecha(keyCode) {
    if ((keyCode == RIGHT_ARROW) && (this.posX < width - 100 - 75)) {
      this.posX= this.posX+5;
    }
  }

  moverIzquierda(keyCode) {
    if ((keyCode == LEFT_ARROW) && (this.posX > 65)) {
      this.posX= this.posX-5;
    }
  }

  tieneVida() {
  }
  chocadonPelota(pelota) {
    if (dist (this.posX,580, pelota.posX, pelota.posY )<10) {
      personaje.vida=2;
    }
  }
}
