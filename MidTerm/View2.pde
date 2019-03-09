class View2 extends PApplet
{
  private Controller controller;
  private String name;
  public View2(Controller _controller){
    controller = _controller;
  }
  public void settings()
  {
    this.size(400,200);
  }
  
  public void draw()
  {
    this.background(0,55,0);
    lineChart2 = new XYChart(this);
    lineChart2.showXAxis(true); 
    lineChart2.showYAxis(true); 
    lineChart2.setMinY(0);
    lineChart2.setData(ages,counts);
    lineChart2.setPointColour(color(180,50,50,100));
    lineChart2.setPointSize(2);
    lineChart2.setLineWidth(2);
    textSize(9);
    lineChart2.draw(15,15,width-30,height-30);
    
    textSize(20);
    text(name+" Age Vs. People", 70,30);
  
}
  public void updateChart(String _name)
  {
    name = _name;
  }
  public void redrawChart()
  {
     controller.updateView2();
  }
  
}
