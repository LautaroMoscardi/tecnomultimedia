int pantalla= 0;

void pantallas () {
 //inicio
  if (pantalla == 0) {
    image(inicio, 0, 0);}
       if (pantalla == 1) {
         
         image(fondos[9], 0, 0,600,500);
         text(textos[0],10,510,580,570);
    image(flecha1,565,580,30,20);
    image(flecha2,5,570,30,20);
  }
  //transforma
    if (pantalla == 2) {
    image(fondos[4], 0, 0,600,500);
    text(textos[1],10,510,580,570);
    text("¿Intentar reincorporarse a su vida cotidiana?",160,555,410,570);
    text("si",520,570,560,580);
    text("no",50,570,90,580);
    image(flecha1,565,560,30,20);
    image(flecha2,5,570,30,20);
    
  }
  //enfermedad
    if (pantalla == 3) {
    image(fondos[6], 0, 0,600,500);
    text(textos[3],10,510,580,570);
  }
  //trata de incorporarse
    if (pantalla == 4) {
    image(fondos[7], 0, 0,600,500);
    text(textos[4],10,500,580,570);
    image(flecha1,565,570,30,20);
  }
   if (pantalla == 5) {
    image(fondos[7], 0, 0,600,500);
    text("¿Intentas desesperadamente acercarte a tu familia nuevamente?",100,555,410,570);
    text("si",520,570,560,580);
    text("no",50,570,90,580);
    image(flecha1,565,570,30,20);
    image(flecha2,5,570,30,20);
  }
  //aceptan su nueva forma
    if (pantalla == 6) {
    image(fondos[7], 0, 0,600,500);
    text(textos[6],10,500,580,570);
  }
  //la hermana
    if (pantalla == 7) {
    image(fondos[2], 0, 0,600,500);
    text(textos[7],10,500,580,570);
    image(flecha1,565,570,30,20);
  }
  //se debilita
    if (pantalla == 8) {
    image(fondos[8], 0, 0,600,500);
    text(textos[8],10,500,580,570);
    image(flecha1,565,560,30,20);
  }
  //muere
    if (pantalla == 9) {
    image(fondos[3], 0, 0,600,500);
    text(textos[9],10,500,580,570);
    image(flecha2,5,570,30,20);
  }
  if (pantalla == 11){
    image(creditos,0,0);
    push();
    textSize(20);
  text("Alumno: Lautaro Moscardi \nLegajo: 91543/9",200-20,200);
  pop();
  
}
}
