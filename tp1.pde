int movcre0;
int movcre1;
int movcre2;
int movcre3;
int movcre4;
int movcre7;
int movcre8;
int movcre9;
int fin;
int movr;
int movgd;
int movl;
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
boolean noclick;
boolean pfin;
PImage p1; 
PFont fuente;
String sis;
String info;
String info2;
String enter;
String salir;
String creditos0;
String creditos1;
String creditos2;
String creditos3;
String creditos4;
String creditos5;
String creditos6;
String creditos7;
String creditos8;
String creditos9;
PImage york;
PImage lothric;
PImage guardiana;
PImage ash;
PImage som1;
PImage pantalla0;
PImage errorim;
PImage farron;
PImage rey;
void setup() {
  size(1280, 720);
  movgd=3600;
  movl=2880;
  movr=2160;
  movy=1440;
  movf=721;
  movg=0;
  ubifotox=1280;
  ubifotoy=720;
  movcre0=400;
  movcre1=570;
  movcre3=1050;
  movcre2=610;
  movcre4=1100;
  movcre7=1600;
  movcre8=1650;
  errorim=loadImage ("error.png");
  farron=loadImage("farron.jpg");
  rey=loadImage("reysinnombre.jpg");
  gundir=loadImage("gundir.jpg");
  pantalla0= loadImage("pantalla0.jpg");
  som1= loadImage("som1.bmp");
  p1= loadImage("p1.jpg");
  york=loadImage("york.jpg");
  lothric=loadImage("lothric.jpg");
  guardiana=loadImage("guardiana.jpg");
  ash=loadImage("ash.jpg");
  fuente=loadFont("PalatinoLinotype-Roman-24.vlw");
  textFont(fuente);
  NP = "Nueva partida";
  info2="Pulse K";
  info="No se pudo encontrar información\n"+
        "" ;
  sis="Sistema";
  salir="Salir";
  enter="Presione J";
  creditos0="                 -- Director --\n           Hidetaka Miyazaki\n\n Co-Directors        Isamu Okano\n                               Yui Tanimura";
  creditos1="-- Programadores --\n ";
  creditos2="Syun Okabe\nDaisuke Shibano\nRei Chikita\nDulce Corazon\nMiguel Fernadez\nAgustina Lopez\nPato Carlo\nMeardel Peson\nSalomé Teerán Tiezo\nAquiles Pico\nAlma Marcela\nZoyla Alegria\nLuis Sanchez\nMiguel Sanchez";
  creditos3="--mùsica--";
  creditos4="Augusto Pascual Barroso\n"+
            "Severiano Velasco-Casado\n"+
            "Ámbar Baeza Carpio\n"+
            "Sofía Salcedo\n"+
            "Filomena Castro Cardona\n"+
            "Teo Balaguer Ripoll\n"+
            "Lorena Ignacia Plaza Rodrigo\n"+
            "María Carmen Múñiz Ríos\n"+
            "Lino Lara\n"+
            "Teodoro Ponce Vilalta\n"+
            "Abigaíl Río\n"+
            "Arsenio Salinas Pol\n"+
            "Álvaro Heraclio Valdés Cuéllar\n"+
            "Odalys Garriga Juliá\n"+
            "Amor Cifuentes Cánovas\n"+
            "Sosimo Marin Alonso\n";
    creditos5="FIN";
    creditos6="Presione 'J' para volver al inicio";
    creditos7="--Personajes--";
    creditos8="Anri de Astora\n"+
              "Archidiácono McDonnell\n"+
              "Cuervo Cornyx del Gran Pantano\n"+
              "El Irrompible Parches\n"+
              "Emma Suma Sacerdotisa\n"+
              "Eygon de Carim\n"+
              "Greirat del Asentamiento\n"+
              "Guardiana del Fuego\n"+
              "Hawkwood\n";
    creditos9="Xiomara Fátima Prat Boix\n"+
               "Valentín de Alberto\n"+
               "Ciro Iñiguez Cadenas\n"+
               "Julio Samper Saldaña\n"+
               "Ángela Riera Feijoo\n"+
               "Kike Francisco Jose Armas Aparicio\n"+
               "Lorenzo Rey Izaguirre\n"+
               "María Belén Ruano\n"+
               "Saturnino Martínez Sala\n";


}

void draw() { 
  background(0);
  if(pfin){
    image(ash, 0, 0, ubifotox, ubifotoy );
    textSize(48 );
    text(creditos5,590,70 );
    textSize(24 );
    text(creditos6,500,680);}
   else{image(pantalla0, 0, 0, ubifotox, ubifotoy);
        text(enter, 550, 500); }
  if (preenter) {
    image(pantalla0, 0, 0, ubifotox, ubifotoy);
    text(enter, 550, 500);
  }
  else{}
  if (pant0) {
    if (pant1) {
      image(p1, 0, 0, ubifotox, ubifotoy);
    } 
    //Nueva Partida
    if (botonNP) {
      text(NP, 520, 460);
    } else {
      image(som1, 410, 427);
      text(NP, 520, 460);
    }

    if ((mouseX > 510) && (mouseX < 510 +180) && (mouseY > 435) && (mouseY <435 + 30)) {
      if (botonNP) {
        botonNP=false;
      };
    } else {
      botonNP=true;
    }
    //Sistema
    if (botonsis) {
      text(sis, 550, 500);
    } else {
      image(som1, 410, 467);
      text(sis, 550, 500);
    }
    if ((mouseX > 535) && (mouseX < 535 + 100) && (mouseY > 480) && (mouseY <480 + 30)) {
      if (botonsis) {
        botonsis=false;
      };
    } else {
      botonsis=true;
    }
    //salir
    if (botonsalir) {
      text(salir, 565, 540);
    } else { 
      image(som1, 410, 505);
      text(salir, 565, 540);
    }
    if ((mouseX > 560) && (mouseX < 560 + 60) && (mouseY > 520) && (mouseY <520 + 30)) {
      if (botonsalir) {
        botonsalir=false;
      };
    } else {
      botonsalir=true;
    }
  }

  if (pant2) {
    
    image(farron, 0, movf, ubifotox, ubifotoy);
    image(gundir, 0, movg, ubifotox, ubifotoy);
    image(york, 0, movy, ubifotox, ubifotoy );
    image(lothric, 0, movl, ubifotox, ubifotoy );
    image(guardiana, 0, movgd, ubifotox, ubifotoy);
    image(rey,0,movr,ubifotox,ubifotoy);
    movf=movf-2;
    movg=movg-2;
    movgd= movgd-2;
    movl=movl-2;
    movy=movy-2;
    movr=movr-2;
    movcre0=movcre0-1;
    movcre1=movcre1-1;
    movcre3=movcre3-1;
    movcre2=movcre2-1;
    movcre4=movcre4-1;
    movcre7=movcre7-1;
    movcre8=movcre8-1;
    fill(255);
    text(creditos0, 450, movcre0); 
    text(creditos1, 520, movcre1);
    text(creditos3,590,movcre3);
    text(creditos2, 637, movcre2);
    text(creditos4, 637, movcre4);
    text(creditos7, 570, movcre7);
    text(creditos8, 200, movcre8);
    text(creditos9, 637, movcre8);
  } else {
  }
  if (error) {
    image(errorim, 340, 230, 550, 250);
    text(info, 430, 300);
    text(info2, 560, 420);
  } else {
  }
  println(mouseX, mouseY);
}

void keyPressed() {
  if (key=='j') {
    pant0=true;
    pant1=true;
    pant2=false;
    pfin=true;
  }
  preenter=false;
  if (key=='k') {
    error=false;
  }
}
void mousePressed() {

  if (pant2) {
  } else {
    if ((mouseX > 510) && (mouseX < 510 +180) && (mouseY > 435) && (mouseY <435 + 30))
    { 
      pant2=true;
      pant0=false;
    }
    if ((mouseX > 535) && (mouseX < 535 + 100) && (mouseY > 480) && (mouseY <480 + 30)) {
      error=true;
    }
    if ((mouseX > 560) && (mouseX < 560 + 60) && (mouseY > 520) && (mouseY <520 + 30)) {
      pant0=false;
      pant1=false;
      error=false;
      preenter=true;
      pfin=false;
    }
  }
}
