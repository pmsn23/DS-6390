import controlP5.*;
ControlP5 cp5;
void setup()
{
  cp5 = new ControlP5(this);
  cp5.addButton("This is a button")
  .setValue(0)
  .setPosition(100,100)
  .setSize(300,300);
  size(500,500);
  
}

void draw(){

}

public void controlEvent(ControlEvent e)
{
  println(e.getController().getName());
}
