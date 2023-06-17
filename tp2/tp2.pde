//lautaro moscardi 91543/9
//Comi 3
//video: https://youtu.be/cbKioAF6Anw.
int posY;
int posXY0;
int posXY1;
int posXdr;
int triabajo1;
int triabajo2;
int triabajo3;
float colo;
float colo1;
float colo2;
PImage asd;

void setup () {
  size (800, 400); 
  colo=255;
  colo1=255;
  colo2=255;
  asd=loadImage("asd.jpg");
  posXY0 = 0;
  posXY1 = 0;
  posXdr = 400;
  triabajo1= 0;
  triabajo2= 400;
  triabajo3 = 400;
}

void draw () {
  image(asd, 0, 0, 400, 400);
  noStroke ();
  for (int i = 0; i <40; i++) {
    fondo(i);
    posXY0 = 0;
    posXY1 = 0;
    posXdr = 400;
  }
  triangulos();
  triabajo1= 0 ;
  triabajo2= 400 ;
  triabajo3 = 400;
}
