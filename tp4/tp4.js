//Lautaro Moscardi 01543/9
//video
function setup() {
  createCanvas(800, 600);
  pelotax=200, pelotay=200;
  pantalla=0;
  for ( let i=0; i<cantL; i++) {
    estadoLadrillos[i] = true;
  }
}

function draw() {
  background(20);
  inicio();
  juego();
  teclas();
  creditos();
}
function keyPressed() {
  if (key == 'z') {
    console.log("z");
    pantalla=0;
  }
  if (key == 'r') {
    console.log("r");
    pantalla=0;
    pelotax=200, pelotay=200;
    lugarx=350, lugary=580, velx=4, vely=4;
    reiniciarBloques();
  }
}
