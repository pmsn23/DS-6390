//Muthu Palanisamy
//DS 7335 - Visualization of Information
//Mid Term
Controller myController;
void settings()
{
  size(800,600);
  myController = new Controller();
}

void draw()
{
  background(0,0,255);
}

void mousePressed(){
  myController.updateView1();
  myController.updateView2();
}
