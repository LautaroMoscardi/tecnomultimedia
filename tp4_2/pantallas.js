let pantalla;
let fotos = [];
let lugarx=350, lugary=580, tamx, tamy, pelotax, pelotay, velx=4, vely=4;
let estadoLadrillos = [];
let estado= 0;
let cantL=10;
function preload() {
  for (let i=1; i <=9; i++) {
    fotos[i]=loadImage('assets/pantalla'+i+'.png');
  }
}
function inicio() {
  if (pantalla == 0) {
    image(fotos[1], 0, 0);
    if ((mouseX > width/2.5) && (mouseX < width/1.5)&&(mouseY > height/1.7)&&(mouseY < height/1.5)) {
      image(fotos[2], 0, 0);
    } else if ((mouseX > width/2.5) && (mouseX < width/1.5)&&(mouseY > height/1.4)&&(mouseY < height/1.2)) {
      image(fotos[3], 0, 0);
    }
  }
}
function mousePressed()
{
  if (pantalla == 0) {
    if ((mouseX > width/2.5) && (mouseX < width/1.5)&&(mouseY > height/1.7)&&(mouseY < height/1.5)) {
      pantalla=1;
    } else if ((mouseX > width/2.5) && (mouseX < width/1.5)&&(mouseY > height/1.4)&&(mouseY < height/1.2)) {
      pantalla=2;
    }
  }
}
function juego() {
  if (pantalla==1) {
    image(fotos[9], 0, 0);
    for (let i=0; i<cantL; i++) {
      if ( estadoLadrillos[i] ) {
        let xL = i*60+(width-60*cantL)/2;
        let yL = 100;
        push()
          fill(0, 255, 0);
        rect (xL, yL, 60, 20);
        pop();
      }
    }
    if ((pelotay>lugary)&&(pelotax>lugarx)&&(pelotax<lugarx+120)) {
      vely=-4;
    }
    if (pelotax>=740-15/2) {
      velx=-4;
    }
    if (pelotax<=70-15/2) {
      velx=4;
    }
    if (pelotay<=85-15/2) {
      vely=4;
    }
    if (pelotay>=height-15/2) {
      vely=0;
      velx=0;
      image(fotos[6], 300, 200, );
    }
    ellipse(pelotax, pelotay, 15, 15);
    pelotax+=velx;
    pelotay+=vely;
    rect (lugarx, lugary, 120, 15, 15);
    image(fotos[7], lugarx, lugary);

    colision();
    if (estadoLadrillos[9]==false) {
      image(fotos[5], 300, 200, );
      velx=0;
      vely=0;
    }
  }
   
}
function perdiste(){
if (pantalla==2) {
    image(fotos[1], 0, 0);
    image(fotos[4], 150, 100);
    teclas();
    
  }
}
function colision() {
  for ( let i=0; i<cantL; i++) {
    if ( estadoLadrillos[i] ) {
      let xL = i*60+(width-60*cantL)/2;
      let yL = 100;
      if ( pelotax-15/2 < pelotax+60 && pelotax+15/2 > xL
        && pelotay-15/2 < yL+20 && pelotay+15/2 > yL ) {
        console.log("hay colision con indice "+ i);
        estadoLadrillos[i] = false;
        vely=4;
        estado=9;
      }
    }
  }
}
