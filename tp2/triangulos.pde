//los triangulos uno apuesto al otro
void triangulos(){
for (int a=0; a<20; a++) {
  push();
  translate(400, 0);
  if (a%2 == 0) {
    fill (colo,colo1,colo2);
  } else {
    fill (0);
  }
  triangle (posXY0, posXY0, 200, 200, posXdr, posXY1);
  posXY0 = posXY0 + 10;
  posXY1 = posXY1 + 10;
  posXdr = posXdr - 10;
  if (a%2 == 0) {
    fill (0);
  } else {
    fill (colo,colo1,colo2);
  }
  triangle (triabajo1, triabajo2, 200, 200, triabajo3, triabajo3);
  triabajo1= triabajo1 +10 ;
  triabajo2= triabajo2 - 10 ;
  triabajo3 = triabajo3 -10;

  pop();
}
}
