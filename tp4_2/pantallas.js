let pantalla;
let fotos = [];
let lugarx=350, lugary=580, tamx, tamy, pelotax, pelotay, velx=4, vely=4;

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
  teclas ();
  if (pantalla==1) {
    image(fotos[9], 0, 0);
    for (let i=1; i<10; i++) {
      for (let j=3; j<6; j++) {
        if (j==1 || j == 14) {
          fill (92, 155, 56);
        }
        rect (i*75, j*30, 60, 20);
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
    ellipse(pelotax, pelotay, 15, 15);
    pelotax+=velx;
    pelotay+=vely;
    rect (lugarx, lugary, 120, 15)
  }
}
