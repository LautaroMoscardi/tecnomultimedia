int tono;
int cant;
int tama;
void setup(){
size(600,600);
rectMode(RADIUS);
tono=255;
cant=20;

}
void draw(){
  tama=width/cant;
  background(255);
  for(int a=width; a>1; a-=cant){
   float lugar= dist(mouseX,mouseY,a*tama,a*tama);
   float gro=lugar*1/dist(width,height,0,0);
    rect(mouseX,mouseY,a,a);  
     strokeWeight(gro);
}
  }
void keyPressed(){
cant=20;
}
void mousePressed(){
cant++;
}
