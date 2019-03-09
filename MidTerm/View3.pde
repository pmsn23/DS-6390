class View3 extends PApplet
{
  private Controller controller;
  private String name;
  public View3(Controller _controller){
    controller = _controller;
  }
  public void settings()
  {
    this.size(400,200);
  }
  
  public void draw()
  {
    this.background(0,55,0);
    this.background(55,0,0);
    scatterplot = new XYChart(this);
    scatterplot.setData(ages,Female);
    scatterplot.showXAxis(true); 
    scatterplot.showYAxis(true);
    scatterplot.setXAxisLabel("\nAge ");
    scatterplot.setYAxisLabel("Feale\n");
    scatterplot.draw(15,15,width-30,height-30);
  
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
