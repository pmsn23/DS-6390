class Square extends Shape {
  Square(float x_, float y_, float r_) {
    super(x_,y_,r_);
  
  }
  
  void display() {
     //stroke(r);
     //rectMode(CENTER);
     //fill(r);
     //line(x,y,r,r);
     pushMatrix();
     translate(width/2, height/2);
     ellipse(35, 5, 50, 50); // head
     rect(14, 32, 50, 50); // body
     rect(0, 32, 12, 37); // left arm
     rect(66, 32, 12, 37); // right arm
     rect(22, 84, 16, 50); // left leg
     rect(40, 84, 16, 50); // right leg
     fill(222, 222, 249);
     ellipse(30, 12, 12, 12); // left eye
     ellipse(47, 12, 12, 12); // right eye
     fill(0);
     ellipse(28, 12, 8, 8); // left pupil
     ellipse(45, 12, 8, 8); // right pupil
     fill(38, 38, 200);
     popMatrix(); 
  }
}
