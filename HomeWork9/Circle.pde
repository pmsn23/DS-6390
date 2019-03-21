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
    //ellipseMode(CENTER);
    //fill(79,160,245);
    fill(206,204,204);
    //stroke(r);
    noStroke();
    ellipse(x,y,x/r,y/r);
  }
}
