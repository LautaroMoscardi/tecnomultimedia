int movcre0;
int movcre1;
int movcre2;
int movash;
int movgd;
int movl;
int movr;
int movb;
int movy;
int movf;
int movg;
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
String creditos0;
String creditos1;
String creditos2;
String creditos3;
PImage york;
PImage bailarina;
PImage rey;
PImage lothric;
PImage guardiana;
PImage ash;
PImage som1;
PImage pantalla0;
PImage errorim;
PImage farron;
 void setup() {
  size(1280,720);
     movash=5040;
     movgd=4320;
     movl=3600;
     movr=2880;
     movb=2160;
     movy=1440;
     movf=721;
     movg=0;
     ubifotox=1280;
     ubifotoy=720;
     movcre0=400;
     movcre1=570;
     movcre2=610;
     
     errorim=loadImage ("error.png");
     farron=loadImage("farron.jpg");
     gundir=loadImage("gundir.jpg");
     pantalla0= loadImage("pantalla0.jpg");
     som1= loadImage("som1.bmp");
     p1= loadImage("p1.jpg");
     york=loadImage("york.jpg");
     bailarina=loadImage("bailarina.jpg");
     rey=loadImage("reysinnombre.jpg");
     lothric=loadImage("lothric.jpg");
     guardiana=loadImage("guardiana.jpg");
     ash=loadImage("ash.jpg");
     fuente=loadFont("PalatinoLinotype-Roman-24.vlw");
     textFont(fuente);
     NP = "Nueva partida";
     info="xxxxxxxxxxxxxxxxxxx";
     sis="Sistema";
     salir="Salir";
     enter="Presione J";
     creditos0="                 -- Director --\n           Hidetaka Miyazaki\n\n Co-Directors        Isamu Okano\n                               Yui Tanimura";
     creditos1="           -- Programadores --\n ";
     creditos2="Syun Okabe\nDaisuke Shibano\nRei Chikita\nDulce Corazon\nMiguel Fernadez\nAgustina Lopez\nPato Carlo\nMeardel Peson\nSalomé Teerán Tiezo\nAquiles Pico\nAlma Marcela\nZoyla Alegria\nLuis Sanchez\nMiguel Sanchez";
     // creditos3="        --
     movfotos=frameCount;
}

void draw(){ 
  background(0);
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
   tint(255,175);
   image(farron,0,movf,ubifotox,ubifotoy);
   image(gundir,0,movg,ubifotox,ubifotoy);
   image(york,0,movy,ubifotox,ubifotoy );
   image(bailarina,0,movb,ubifotox,ubifotoy );
   image(rey,0,movr,ubifotox,ubifotoy);
   image(lothric,0,movl,ubifotox,ubifotoy );
   image(guardiana,0,movgd,ubifotox,ubifotoy);
   image(ash,0,movash,ubifotox,ubifotoy );
    movf=movf-2;
    movg=movg-2;
    movash= movash-2;
     movgd= movgd-2;
     movl=movl-2;
     movr= movr-2;
     movb=movb-2;
     movy=movy-2;
     movcre0=movcre0-1;
     movcre1=movcre1-1;
     movcre2=movcre2-1;
   fill(255);
   text(creditos0,450,movcre0); 
   text(creditos1,450,movcre1);
   text(creditos2,637,movcre2);
 }
 else{}
 if(error){
 image(errorim,320,230,550,250);
 text(info,350,300);
 }
 else{
 }
 movfotos=frameCount;
 println(mouseX,mouseY);
 }
  
 void keyPressed(){
  if(key=='j'){
 pant0=true;
 pant1=true;
 pant2=false;}
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
