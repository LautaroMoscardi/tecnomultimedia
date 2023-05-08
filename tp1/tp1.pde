//lautaro Moscardi 
//legajo 91543/9
//Comision 3

int pantallas;
int cont=0;
PImage pant1;
PImage pant2;
PImage pant3;
PImage pant4;
PFont fuente ;
int tex1=481;

void setup() {
  size(640, 480);
  fuente=loadFont("fuente.vlw");
  pant1=loadImage("pantalla1.jpg");
  pant2=loadImage("pantalla2.bmp");
  pant3=loadImage("pantalla3.bmp");
  pant4=loadImage("pantalla4.jpg");
}
void draw() {
  background(0);
  println(mouseX, mouseY);
  textFont(fuente);
  if (cont>=0) {
    fill(255);
    textSize(30);
    text("Nam June Paik, autopista electrónica:\n       Estados Unidos continental,\n                Alaska, Hawái", width/4.5, height/3);
    cont = cont+1;
  }
  if (cont==400) {
    tex1=481;
  } 
  if (cont>=400) {
    image(pant1, 0, 0, width, height);
    textSize(25);
    text("Electronic Superhighway: Continental U.S.,\nAlaska, Hawaii (1995) es una instalación del artista coreano/americano\nNam June Paik ubicada en el American Art Museum de Washington DC\nque se ha convertido en un icono de Estados Unidos,\ny por extensión, de todo mundo artístico\nen la era de la comunicación cibenética.", 10, tex1);
    tex1--;
  } 
  if (cont==800) {
    tex1=481;
  } 
  if (cont>=800) {
    image(pant2, 0, 0, width, height);
    text("Es considerada una de las obras maestras de Paik\ny es realmente abrumadora y contundente. La obra, de gran dimensión,\nconsta de cincuenta y un canales de videoinstalación electrónica\npersonalizada, luces de neón, acero y madera, color y sonido.\nEl artista la regaló al museo.", 10, tex1);
    tex1--;
  } 
  if (cont==1000) {
    tex1=481;
  }
  if (cont>=1000) {
    image(pant3, 0, 0, width, height);
    text("Nam June Paik es uno de los artistas más influyentes de su generación,\nel que transformó la televisión y el video en un medio artístico.\nSe le considera el padre del videoarte y la performance y\nuno de los pioneros del arte electrónico.", 10, tex1);
  }
  if (cont>=1300) {
    image(pant4, 0, 0, width, height);
    text("Reiniciar", 280, 280);
  }
}
void mousePressed() {
  if (cont>=1300) {
    if ((mouseX > 225) && (mouseX < 225 + 187) && (mouseY > 243) && (mouseY <243 + 48)) {
      cont=0;
      tex1=481;
    }
  }
}
