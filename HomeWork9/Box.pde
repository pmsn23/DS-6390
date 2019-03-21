class Box extends Shape {
  
  Box(float x_, float y_, float r_) {
    super(x_,y_,r_);
  }
  void display() {
    stroke(95);
    pushMatrix();
      fill(165,255,195);
      translate(x, y);
      rotateY(radians(frameCount));
      rotateX(radians(frameCount)*2);
      rotateZ(radians(frameCount)/2);
      lightSpecular(255, 255, 255);
      specular(255, 255, 255);
      box(x/2, y/2, r/2);
    popMatrix();
  }
}
