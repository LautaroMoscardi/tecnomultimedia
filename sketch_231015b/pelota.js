class Pelota {
  constructor() {
    this.posX = 200;
    this.posY = 200;
    this.velX =4;
    this.velY =4;
    this.foto = loadImage();
  }
  dibujar() {
    ellipse(this.posX, this.posY, 15, 15);
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
    if (this.posY>=height-15/2) {
      this.velY=-4;
    }
  }
  colisionPersonaje() {
  }

  }
