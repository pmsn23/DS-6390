void ageRange(){
  textSize(20);
  stroke(0);
  fill(255, 255, 255);
  textAlign(CENTER);
  for (int i = 0; i < cheXnet.ageSorted.length; i++) {
      rotate(theta);
      text(cheXnet.ageSorted[i],0,-outerR-(height/2*0.02));
  }
}
