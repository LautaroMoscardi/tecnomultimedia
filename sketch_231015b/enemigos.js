class Enemigos {
  constructor(posX) {
    this.posX=posX+170;
    this.posY=100;
    this.foto;
    this.vida=true;
  }
  dibujar() {
    if (this.vida) {
      rect(this.posX, this.posY, 100, 20);
    }
  }

  tieneVida() {
  }
  chocadonPelota(pelota) {
    if (dist (this.posX, this.posY, pelota.posX, pelota.posY )<50) {
      this.vida=false;
    }
  }
}
