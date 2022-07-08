//video: https://youtu.be/JpJX6NvQUMs


int mov;
int mov2;
int l;
int ubi1=75;
int ubi2=30;
int ancho;
float bolaX, bolaY, tamX, tamY;
float velx, vely, velop;
boolean victoria=true;
boolean derrota=true;
boolean pant1;
boolean pan0=true;
boolean creditos;
PImage[]fondos;
boolean[][] colision;

int numeroDeRect = 27;
void setup() {
  size(800, 600);
  mov2=580;
  mov=450;
  bolaX=500;
  bolaY=300;
  tamX=20;
  tamY=20;
  velx=4;
  vely=4;
  velop=5;
  l=50;
  ancho=100;

  fondos=new PImage[7];
  fondos[0]=loadImage("PANT0.jpg");
  fondos[1]=loadImage("PANT01.jpg");
  fondos[2]=loadImage("pant1.jpg");
  fondos[3]=loadImage("victoria.jpg");
  fondos[4]=loadImage("derrota.jpg");
  fondos[5]=loadImage("creditos.jpg");
  fondos[6]=loadImage("pant2.jpg");
  colision = new boolean[9][3];
}

void draw() {
  background(0, 134, 255);
  //println(mouseX, mouseY);
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
        if (colision[i-1][e-3]  == false) {
          rect(i*ubi1, e*ubi2, 60, 20);
        }
        if (dist(i*ubi1, e*ubi2, bolaX, bolaY)<30 && colision[i-1][e-3] == false) {
          colision[i-1][e-3] = true;
          vely=4;
        }
        numeroDeRect++;
        if (e<= 2&& i<=2) {
          image(fondos[3], 220, 180);
        }
      }
    }
    if ((bolaY>mov2)&&(bolaY<600)&&(bolaX>mov)&&(bolaX<mov+ancho)) {
      rect(mov, mov2, ancho, 15);
      ellipse(bolaX, bolaY, tamX, tamY);
      vely=-4;
    }
    if (bolaX>=750-tamX/2) {
      velx=-4;
    }
    if (bolaX<=70-tamX/2) {
      velx=4;
    }
    //if (bolaY<=81+tamY/2) {
    //  vely=4;
    // }
    ellipse(bolaX, bolaY, tamX, tamY);
    bolaX+=velx;
    bolaY+=vely;
    rect(mov, 580, ancho, 15);
    image(fondos[6], 0, 0);
  }
  //creditos
  if (creditos) {
    image(fondos[5], 160, 130);
  }

  //victoria
  if (victoria) {
    if (bolaY<=81+tamY/2) {

      image(fondos[3], 220, 180);
    }
  }
  //derrota
  if (derrota) {
    if ((bolaY>=height)) {
      image(fondos[4], 220, 180);
    }
  }
  println(mouseX, mouseY);
}
void mousePressed() {
  if ((mouseX > 265) && (mouseX < 265 +250) && (mouseY > 350) && (mouseY <350 + 50)) { 
    pan0=false;
    pant1=true;
  }
  if ((mouseX > 245) && (mouseX < 245 +305) && (mouseY > 450) && (mouseY <450 + 40)) { 
    creditos=true;
  }
}
void keyPressed() {

  if (key == 'r') {
    bolaX=500;
    bolaY=300;
    derrota=false;
    derrota=true;
  }
  if (key == 'z') {
    bolaX=500;
    bolaY=300;
    pan0=true;
    pant1=false;
    victoria=false;
    victoria=true;
    creditos=false;
  }

  if (keyCode == LEFT) {
    mov-=velop*2;
  }
  if (keyCode == RIGHT) {
    mov+=velop*2;
  }
}
