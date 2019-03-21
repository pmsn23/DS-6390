class Shape{
  float x;
  float y;
  float r;
  
  Shape(float x_, float y_, float r_){
    x = x_;
    y = y_;
    r = r_;
  }
  void viberate(){
    x -= random(-2,2);
    y -= random(-2,2);
  }
  void display(){
    point (x,y);
  }
}
