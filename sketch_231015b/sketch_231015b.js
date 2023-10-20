let objuego;

function setup() {
  createCanvas(800,600);
  objuego = new Juego();
}


function draw() {
  background(100);
  objuego.dibujar();
  objuego.teclaPresionada(keyCode);
}
