//manteniendo la letra k podes cambiar de color
void keyTyped() {
  if (key=='k') {
    colo=random(50,255);
    colo1=random(50, 255);
    colo2=random(50, 255);
  }
}
//apretando la letra r para poder reiniciar el proceso 
void keyPressed() {
  if (key=='r') { 
    colo=255;
    colo1=255;
    colo2=255;
  }
}
