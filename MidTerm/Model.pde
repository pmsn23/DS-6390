class Model
{
  ControlP5 cp5;
  DropdownList d1;
 
  private Controller controller;
  
  private float radius1 = 10;
  private float radius2 = 10;
  
  public Model(Controller _controller){
    controller = _controller;
  }
  public float getRadius1(){
    return radius1;
  }
  public String getNames(){
    return name;
  }
  public void updateText(){
    return;
  }
  public void increaseRadius2(){
    radius2 += 10;
  }
}
