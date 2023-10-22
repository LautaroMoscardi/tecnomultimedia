let objuego;
//Lautaro Moscardi 91543/9

function setup() {
  createCanvas(800,600);
  objuego = new Juego();
}


function draw() {
  background(100);
  objuego.dibujar();
  objuego.teclaPresionada(keyCode);
}
function mousePressed(){
 objuego.botones(event);
}
