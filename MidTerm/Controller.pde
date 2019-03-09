class Controller
{
  ControlP5 cp5;
  private View1 myView1;
  private View2 myView2;
  private View3 myView3;
  private Model myModel;  
  public Controller()
  {
    myView1 = new View1(this);
    myView2 = new View2(this);
    myView3 = new View3(this);
    myModel = new Model(this);

    PApplet.runSketch(new String[]{"My View 1"}, myView1);
    PApplet.runSketch(new String[]{"My View 2"}, myView2);     
    PApplet.runSketch(new String[]{"My View 3"}, myView3);     
    myView1.updateRadius(myModel.getRadius1()); 
    myView2.updateChart(myModel.getNames());
  }
  public void updateView1()
  {
    myModel.updateText();
    myView1.updateRadius(myModel.getRadius1());
  }
  public void updateView2()
  {
    myView2.updateChart(myModel.getNames());
    //myView2.redrawChart();
  }
}
