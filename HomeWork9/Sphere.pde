class Sphere extends Shape {
  
  Sphere(float x_, float y_, float r_) {
    super(x_,y_,r_);
  }
  void display() {
    stroke(0);
    pushMatrix();
      fill(165,255,195);
      translate(width, height/18, r);
      rotateY(frameCount * PI/ 360);
      lightSpecular(51, 102, 126);
      specular(55, 255, 126);
      sphere(x);
    popMatrix();
  }
}
