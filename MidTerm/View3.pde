class View3 extends PApplet
{
  private Controller controller;
  private float redraw3;
  public View3(Controller _controller){
    controller = _controller;
  }
  public void settings()
  {
    this.size(600,300);
    if (redraw3 == 0){
    noLoop();}
    else{ redraw();}
  }
  
  public void draw()
  {
    this.background(55,0,0);
    pushMatrix();
    if (currentIndex > 0){
    scatterplot = new XYChart(this);
    scatterplot.setData(age,male);
    scatterplot.showXAxis(true); 
    scatterplot.showYAxis(true);
    scatterplot.setXAxisLabel("\nAge ");
    scatterplot.setYAxisLabel("Male\n");
    scatterplot.draw(15,15,width-30,height-30);}
    popMatrix();
  }
  public void updateFlag(float _redraw3)
  {
    redraw3 = _redraw3;
  }
  public void mousePressed(){
    redraw();
  }
}
