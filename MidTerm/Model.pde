class Model
{
  ControlP5 cp5;
  DropdownList d1;
 
  private Controller controller;
  private float redraw;
  private float redraw1;
  private float redraw3;
  
  public Model(Controller _controller){
    controller = _controller;
  }
  public float getflag(){
    return redraw;
  }
  public float getflag1(){
    return redraw1;
  }
  public float getflag3(){
    return redraw3;
  }
  public void setflag(){
    redraw += 1;
  }
  public void setflag1(){
    redraw1 += 1;
  }
  public void setflag3(){
    redraw3 += 1;
  }
  public void resetflag(){
    redraw = 0;
  }
  public void resetflag1(){
    redraw1 = 0;
  }
  public void resetflag3(){
    redraw3 = 0;
  }
  
}
