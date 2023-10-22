class Pelota {
  constructor() {
    this.posX = 200;
    this.posY = 200;
    this.ancho =15;
    this.alto=15;
    this.velX =4;
    this.velY =4;
    this.foto = loadImage();
  }
  dibujar() {
    push();
    textSize(18);
    text("ayuda",this.posX, this.posY);
    pop();
  }

  mover() {
    this.posX+=this.velX;
    this.posY+=this.velY;
  }
  colisionParedes() {
    if (this.posX>=740-15/2) {
      this.velX=-4;
    }
    if (this.posX<=70-15/2) {
      this.velX=4;
    }
    if (this.posY<=85-15/2) {
      this.velY=4;
    }
    

  }
  colisionPersonaje(personaje) {
    
  }

  }
