void drawBar(){
  int distX = 350;
  int distY = 20;
  stroke(255, 2, 2);
 
  line (distX+10, 22, distX+20+6*18, 22);
  text("M + - F + -", distX+70, 40);
   
  stroke(241,250,15);
   
  fill(9,16,144);
  rect (10+distX, distY, 20, -cheXnet.Male);
  rect (30+distX, distY, 20, -cheXnet.mPEpositive);
  rect (50+distX, distY, 20, -cheXnet.mPEnegative);
  fill(234,21,234);
  rect (70+distX, distY, 20, -cheXnet.Female);
  rect (90+distX, distY, 20, -cheXnet.fPEpositive);
  rect (110+distX, distY, 20, -cheXnet.fPEnegative);
}
