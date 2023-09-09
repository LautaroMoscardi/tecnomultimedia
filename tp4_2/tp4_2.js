
function setup() {
  createCanvas(800, 600);
  pelotax=400,pelotay=300;
  pantalla =0;
  for ( let i=0; i<cantL; i++) {
    estadoLadrillos[i] = true;
  }
}

function draw(){
  background(20);
  inicio();
  juego();
  teclas();
  perdiste();
 }
 function keyPressed(){
 if (key == 'z') {
    console.log("z");
    pantalla=0;
  }
  if (key == 'r') {
    console.log("r");
    pantalla==1;
  }
 }
