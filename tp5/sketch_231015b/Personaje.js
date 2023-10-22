class Personaje {
  constructor() {
    this.posX = 350;
    this.foto = loadImage('fotos/cucaracha.png');

    this.ancho = 120;
    this.posY = 580;
    this.alto = 15;
  }

  dibujar() {

      image(this.foto, this.posX, 550, 120, 40);
   

    //if (this.vida==2) {

    //}
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
  colisionpersonaje(pelota) {
    let pelotaDerecha = pelota.posX + pelota.ancho;
    let pelotaAbajo = pelota.posY + pelota.alto;

    if ( this.posX < pelotaDerecha && this.posX + this.ancho > pelota.posX && this.posY < pelotaAbajo && this.posY + this.alto > pelota.posY) {
      pelota.velY=-4;
      this.vida=2;
    }
  }
}
