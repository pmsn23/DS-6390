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
  public float getRadius2(){
    return radius2;
  }
  public void increaseRadius1(){
    radius1 += 10;
  }
  public void increaseRadius2(){
    radius2 += 10;
  }
  public void draw(){
    chartWidth = width - 100;
    chartHeight = height - 100;
    cp5 = new ControlP5(this);
    // create a DropdownList
    d1 = cp5.addDropdownList("myList-d1")
        .setPosition(10, 10)
      .setSize(300, 200)
    ;
    
    d1.close();
  }
}
