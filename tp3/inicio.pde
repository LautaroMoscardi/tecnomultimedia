void inicio() {
  background(0, 134, 255);
  if (pan0) {
    if ((mouseX > 265) && (mouseX < 265 +250) && (mouseY > 350) && (mouseY <350 + 50)) {
      image(fondos[1], 0, 0);
    } else {
      image(fondos[0], 0, 0);
    }
  }
}
