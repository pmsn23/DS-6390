class Controller
{
  ControlP5 cp5;
  private View myView;
  private View1 myView1;
  private View2 myView2;
  private View3 myView3;
  private Model myModel;  
  public Controller()
  {
    //myView1 = new View1(this);
    myView2 = new View2(this);
    //myView3 = new View3(this);
    myView = new View(this);
    myModel = new Model(this);

    //PApplet.runSketch(new String[]{"My View 1"}, myView1);
    PApplet.runSketch(new String[]{"My View 2"}, myView2);     
    //PApplet.runSketch(new String[]{"My View 3"}, myView3);
    PApplet.runSketch(new String[]{"My View"}, myView);
    myView.updateFlag(myModel.getflag());
    //myView1.updateFlag(myModel.getflag1()); 
    //myView3.updateFlag(myModel.getflag3());
    
  }
  public void updateView()
  {
    myModel.setflag();
    myView.updateFlag(myModel.getflag());
  }
  public void resetView()
  {
    myModel.resetflag();
    myView.updateFlag(myModel.getflag());
  }
  public void updateView1()
  {
    myModel.setflag1();
    myView1.updateFlag(myModel.getflag1());
  }
  public void resetView1()
  {
    myModel.resetflag1();
    myView1.updateFlag(myModel.getflag1());
  }
   public void updateView3()
  {
    myModel.setflag1();
    myView1.updateFlag(myModel.getflag3());
  }
    public void resetView3()
  {
    myModel.resetflag3();
    myView1.updateFlag(myModel.getflag3());
  }

}
