class Enemigos {
  constructor(posX) {
    this.posX=posX+170;
    this.posY=100;
    this.ancho=100;
    this.alto=20;
    this.vida=true;
    this.murio=true;
    
  }
  dibujar() {
    if (this.vida) {
      rect(this.posX, this.posY, 100, 20);
      console.log(contador);
    } else {
      console.log(this.murio);
      this.murio=true;
    }
  }

  tieneVida() {
    if (this.murio==true) {
      contador=contador+1;
    }
   
  }
  chocadonPelota(pelota) {
    let pelotaDerecha = pelota.posX + pelota.ancho;
    let pelotaAbajo = pelota.posY + pelota.alto;

    if (this.posX < pelotaDerecha && this.posX + this.ancho > pelota.posX && this.posY < pelotaAbajo && this.posY + this.alto > pelota.posY) {
      this.vida=false;
      return true;
    } else {
      return false;
    }
  }
}
