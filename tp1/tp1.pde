int movfotos;
PImage gundir;
int ubifotox;
int ubifotoy;
String NP;
boolean error;
boolean botonNP;
boolean botonsis;
boolean pant0;
boolean preenter=true;
boolean botonsalir;
boolean pant1;
boolean pant2;
PImage p1; 
PFont fuente;
String sis;
String info;
String enter;
String salir;
PImage som1;
PImage pantalla0;
PImage errorim;
PImage farron;
 void setup() {
  size(1280,720);
     
     
     info="xxxxxxxxxxxxxxxxxxx";
     errorim=loadImage ("error.png");
     farron=loadImage("farron.jpg");
     movfotos=frameCount;
     gundir=loadImage("gundir.jpg");
     enter="Presione J";
     pantalla0= loadImage("pantalla0.jpg");
     som1= loadImage("som1.bmp");
     salir="Salir";
     sis="Sistema";
     p1= loadImage("p1.jpg");
     ubifotox=1280;
     ubifotoy=720;
     NP = "Nueva partida";
     fuente=loadFont("PalatinoLinotype-Roman-24.vlw");
  textFont(fuente);
  
}

void draw(){ 
  if(preenter){
  image(pantalla0,0,0,ubifotox,ubifotoy);
  text(enter,550,500);
}
  if(pant0){
 if(pant1){
 image(p1,0,0,ubifotox,ubifotoy);
} 

  //Nueva Partida
  if (botonNP){
  text(NP,520,460);
  }
else{
    image(som1, 410,427);
    text(NP,520,460);
  }
   
 if ((mouseX > 510) && (mouseX < 510 +180) && (mouseY > 435) && (mouseY <435 + 30)){
   if(botonNP){
     botonNP=false;};
 }else{
 botonNP=true;
 }
//Sistema
 if (botonsis){
  text(sis,550,500);
  }
else{
    image(som1, 410,467);
    text(sis,550,500);
  }
 if ((mouseX > 535) && (mouseX < 535 + 100) && (mouseY > 480) && (mouseY <480 + 30)){
   if(botonsis){
     botonsis=false;};
 }else{
 botonsis=true;
 }
 //salir
  if (botonsalir){
  text(salir,565,540);
  }
 else{ 
    image(som1, 410,505);
    text(salir,565,540);
  }
 if ((mouseX > 560) && (mouseX < 560 + 60) && (mouseY > 520) && (mouseY <520 + 30)){
   if(botonsalir){
     botonsalir=false;};
 }else{
 botonsalir=true;
 }}
 
 if(pant2){
   image(farron,0,-movfotos,0,721);
   image(gundir,0,-movfotos,ubifotox,ubifotoy);
   ;
 }
 else{}
 if(error){
 image(errorim,320,230,550,250);
 text(info,350,300);
 }
 else{
 }
 println(mouseX,mouseY);
 }
  
 void keyPressed(){
  if(key=='j'){
 pant0=true;
 pant1=true;}
 preenter=false;
 if(key=='k'){
error=false;}
 }
void mousePressed(){
 
 if ((mouseX > 510) && (mouseX < 510 +180) && (mouseY > 435) && (mouseY <435 + 30))
 { pant2=true;
   pant0=false;
 }
 if ((mouseX > 535) && (mouseX < 535 + 100) && (mouseY > 480) && (mouseY <480 + 30)){
  error=true;
 }
 if ((mouseX > 560) && (mouseX < 560 + 60) && (mouseY > 520) && (mouseY <520 + 30)){
   pant0=false;
   pant1=false;
 error=false;
 preenter=true;}
}
