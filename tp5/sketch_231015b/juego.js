let contador=0;
class Juego {
  constructor() {
    this.crearPersonaje();
    this.crearEnemigos();
    this.pelota = new Pelota();
    this.obcuento = new Cuento();
  }
  iniciar() {
  }

  dibujar() {
    console.log(this.contador);
    this.obcuento.dibujar();
    if (this.obcuento.pantalla==8) {
      this.personaje.dibujar();
      for (let i=0; i <3; i++) {
        this.enemigos[i].dibujar();
      }
      this.crearPelota();
      this.colision();
      this.perder();
    }
  }

  crearPersonaje() {
    this.personaje = new Personaje();
  }

  crearEnemigos() {
    this.enemigos =[];
    for (let i=0; i <3; i++) {
      this.enemigos[i] = new Enemigos(i*150);
    }
  }
  teclaPresionada(keyCode) {
    this.personaje.moverDerecha(keyCode);
    this.personaje.moverIzquierda(keyCode);
  }
  crearPelota() {
    this.pelota.dibujar();
    this.pelota.mover();
    this.pelota.colisionParedes();
  }
  colision() {

    for (let i=0; i <3; i++) {
      this.enemigos[i].chocadonPelota(this.pelota);
    }
    this.personaje.colisionpersonaje(this.pelota);
  }
  botones(event){
  this.obcuento.botones(event);
  }
  perder() {
    if (this.pelota.velY>=height-15/2) {
      this.pelota.velY=0;
      this.pelota.velX=0;
      this.obcuento.pantalla=10;
    }
  }

  ganar() {
    
  }
}
