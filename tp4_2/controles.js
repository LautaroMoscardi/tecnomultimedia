function teclas() {

  if (key == 'r') {
  }
  if (key == 'z') {
  }

  if ((keyCode == LEFT_ARROW) && (lugarx > 75)) {
    lugarx= lugarx-5;
  }
  if ((keyCode == RIGHT_ARROW) && (lugarx < width - 120 - 75)) {
    lugarx= lugarx+5;
  }
}
