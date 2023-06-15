//la grilla del fondo creada con lineas 
void fondo(int i) {
  if (i%2 == 0) {
    fill (0);
  } else {
    fill (255);
  }
  rect (width/2, posY, width, 20);
  posY = posY + 10;
}    
