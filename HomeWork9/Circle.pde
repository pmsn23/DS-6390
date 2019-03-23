class Circle extends Shape{
  
  Circle(float x_, float y_, float r_) {
    super(x_,y_,r_);           
  }
  void viberate(){;
    super.viberate();
    r += random(-1,1);
    r = constrain(r,0,50);
  }
  
  void display() {
    fill(206,204,204);
    noStroke();
    ellipse(x,y,x/r,y/r);
  }
}
