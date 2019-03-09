class View1 extends PApplet
{
  private Controller controller;
  private float radius;
  public View1(Controller _controller){
    controller = _controller;
  }
  public void settings()
  {
    this.size(400,200);
  }
  
  public void draw()
  {
    this.background(55,0,0);
    scatterplot = new XYChart(this);
    scatterplot.setData(ages,Male);
    scatterplot.showXAxis(true); 
    scatterplot.showYAxis(true);
    scatterplot.setXAxisLabel("\nAge ");
    scatterplot.setYAxisLabel("Male\n");
    scatterplot.draw(15,15,width-30,height-30);
  }
  public void updateRadius(float _radius)
  {
    radius = _radius;
  }
  public void mousePressed(){
    controller.updateView2();
  }
}
