Shape[] shapes = new Shape[100];

void setup(){
  size (500, 500, P3D);
  
  for (int i=0; i<shapes.length; i++){
    int k = int(random(4));
    switch(k){
      case 0:
        shapes[i] = new Circle(width/2,height/2,15);
        break;
      case 1:
        shapes[i] = new Square(width/2,height/2,12);
        break;
      case 2:
        shapes[i] = new Box(width/6,height/6,32);
        break;
      case 3:
        shapes[i] = new Box(width/8,height/8,50);
        break;
    }
  }   
}

void draw() {
  float rg = map(abs((millis()%10000)-5000), 0, 5000, 0, 255);
  background(rg, rg, 0);
  pushMatrix();
    translate(width/2, height/2);
    rotate(-PI);
    rotate(map(millis()%10000, 0, 10000, 0, TWO_PI));  
    fill(255, 255-rg, 255-rg); 
    ellipse(0, 200, 50, 50);
    fill(255);
    ellipse(0, -200, 50, 50);
  popMatrix();
  for (int i = 0; i < shapes.length; i++ ) {
    shapes[i].viberate();
    shapes[i].display();
  }
}  
