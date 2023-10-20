class Juego {
  constructor() {
    this.crearPersonaje();
    this.crearEnemigos();
    this.pelota = new Pelota();
  }
  iniciar() {
  }

  dibujar() {
    this.personaje.dibujar();
    for (let i=0; i <3; i++) {
      this.enemigos[i].dibujar();
    }
    this.crearPelota();
    this.colision();
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
  }

  perder() {
  }

  ganar() {
  }
}
