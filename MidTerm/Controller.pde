class Controller
{
  private View1 myView1;
  private View2 myView2;
  private Model myModel;  
  public Controller()
  {
    myView1 = new View1(this);
    myView2 = new View2(this);
    myModel = new Model(this);
    
    PApplet.runSketch(new String[]{"My View 1"}, myView1);
    PApplet.runSketch(new String[]{"My View 2"}, myView2);     
    myView1.updateRadius(myModel.getRadius1()); 
    myView2.updateRadius(myModel.getRadius2());
  }
  public void updateView1()
  {
    myModel.increaseRadius1();
    myView1.updateRadius(myModel.getRadius1());
  }
  public void updateView2()
  {
    myModel.increaseRadius2();
    myView2.updateRadius(myModel.getRadius2());
  
  }
  
}
