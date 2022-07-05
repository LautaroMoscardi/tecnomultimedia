int mov;
int l;
int ubi1=70;
int ubi2=30;
float bolaX, bolaY, tamX, tamY;
float velx,vely,velop;
boolean pant1;
boolean pan0=true;
PImage pant0;
PImage pant01;
PImage foto1;
void setup(){
size(800,600);
mov=340;
bolaX=400;
bolaY=300;
tamX=20;
tamY=20;
velx=2;
vely=2;
velop=5;
l=50;
pant0=loadImage("PANT0.jpg");
pant01=loadImage("PANT01.jpg");
foto1=loadImage("pant1.jpg");
}

void draw(){
background(0,134,255);
println(mouseX, mouseY);
//inicio
 if(pan0){
if ((mouseX > 265) && (mouseX < 265 +250) && (mouseY > 350) && (mouseY <350 + 50)) {
image(pant01,0,0);
}else{image(pant0,0,0);}
}
//juego
 if(pant1){
   image(foto1,0,0);
  for(int i=0; i<10; i++){
   for(int e=0; e<5; e++){
    rect(i*ubi1,e*ubi2,60,20);}
 }
 if(bolaX>=750-tamX/2){
  velx=-2;}
 if(bolaX<=50-tamX/2){
  velx=2;}
 if(bolaY<=50+tamY/2){
  vely=2;}
 if(bolaY>=580-tamY/2){
  vely=-2;}
   ellipse(bolaX,bolaY,tamX,tamY);
bolaX+=velx;
bolaY+=vely;
   rect(mov,580,100,15);
   
}

}
void mousePressed(){
if ((mouseX > 265) && (mouseX < 265 +250) && (mouseY > 350) && (mouseY <350 + 50)){ 
pan0=false;
pant1=true;
}
}
void keyPressed(){
 if(keyCode == LEFT){
  mov-=velop;
}
 if(keyCode == RIGHT){
  mov+=velop;
}
}
