int mov;
int mov2;
int l;
int ubi1=75;
int ubi2=30;
int ancho;
float bolaX, bolaY, tamX, tamY;
float velx, vely, velop;
boolean pant1;
boolean pan0=true;
PImage[]fondos;
boolean [] colum;
void setup() {
  size(800, 600);
  mov2=580;
  mov=450;
  bolaX=400;
  bolaY=300;
  tamX=20;
  tamY=20;
  velx=2;
  vely=2;
  velop=5;
  l=50;
  ancho=100;
   colum=new boolean[27];
   
   
  fondos=new PImage[5];
  fondos[0]=loadImage("PANT0.jpg");
  fondos[1]=loadImage("PANT01.jpg");
  fondos[2]=loadImage("pant1.jpg");
  fondos[3]=loadImage("victoria.jpg");
  fondos[4]=loadImage("derrota.jpg");
}

void draw() {
  background(0, 134, 255);
  println(mouseX, mouseY);
  //inicio
  if (pan0) {
    if ((mouseX > 265) && (mouseX < 265 +250) && (mouseY > 350) && (mouseY <350 + 50)) {
      image(fondos[1], 0, 0);
    } else {
      image(fondos[0], 0, 0);
    }
  }
  //juego
  if (pant1) {
    image(fondos[2], 0, 0);
    for (int i=1; i<10; i++) {
      for (int e=3; e<6; e++) {
        rect(i*ubi1, e*ubi2, 60, 20);
        if (dist(i*ubi1, e*ubi2, bolaX, bolaY)<30) {
          rect(i*ubi1, e*ubi2, 60, 20);
          ellipse(bolaX, bolaY, tamX, tamY);
          vely=2;
        }
      }
    }
    if ((bolaY>mov2)&&(bolaY<600)&&(bolaX>mov)&&(bolaX<mov+ancho)) {
      rect(mov, mov2, ancho, 15);
      ellipse(bolaX, bolaY, tamX, tamY);
      vely=-2;
    }
    if (bolaX>=750-tamX/2) {
      velx=-2;
    }
    if (bolaX<=70-tamX/2) {
      velx=2;
    }
    if (bolaY<=81+tamY/2) {
      vely=2;
    }
    ellipse(bolaX, bolaY, tamX, tamY);
    bolaX+=velx;
    bolaY+=vely;
    rect(mov, 580, ancho, 15);
}
//derrota
   if(bolaY>=height){
   vely=0;
   velx=0;
   image(fondos[4],220,180);
   }

}
void mousePressed() {
  if ((mouseX > 265) && (mouseX < 265 +250) && (mouseY > 350) && (mouseY <350 + 50)) { 
    pan0=false;
    pant1=true;
  }
}
void keyPressed() {
  if (keyCode == 'r'){
  }
  if (keyCode == LEFT) {
    mov-=velop;
  }
  if (keyCode == RIGHT) {
    mov+=velop;
  }
}
