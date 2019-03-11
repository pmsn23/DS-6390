class View2 extends PApplet
{
  private Controller controller;
  //private String name;
  public View2(Controller _controller){
    controller = _controller;
  }
  public void settings()
  {
    this.size(800,400);
  }
  
  public void draw()
  {
    this.background(0,55,0);
    lineChart2 = new XYChart(this);
    lineChart2.showXAxis(true); 
    lineChart2.showYAxis(true); 
    lineChart2.setMinY(0);
    lineChart2.setData(age,featureValueCount);
    lineChart2.setPointColour(color(180,50,50,100));
    lineChart2.setPointSize(3);
    lineChart2.setLineWidth(3);
    textSize(10);
    lineChart2.setXAxisLabel("\nAge ");
    lineChart2.setYAxisLabel("Count\n");
    lineChart2.draw(15,15,width-30,height-30);
    
    textSize(15);
    text("Age Vs. Total", 200,35);
  
}
  public void updateChart()
  {
    return;
  }
  public void redrawChart()
  {
     return;
  }
  
}
