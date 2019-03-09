class View1 extends PApplet
{
  private Controller controller;
  private float redraw1;
  public View1(Controller _controller){
    controller = _controller;
  }
  public void settings()
  {
    this.size(400,200);
    println(redraw1);
    if (redraw1 == 0){
    noLoop();}
    else{ redraw();} 
  }
  
  public void draw()
  {
    this.background(55,0,0);
    if (currentIndex > 0){
    pushMatrix();
    scatterplot = new XYChart(this);
    scatterplot.setData(age,female);
    scatterplot.showXAxis(true); 
    scatterplot.showYAxis(true);
    scatterplot.setXAxisLabel("\nAge ");
    scatterplot.setYAxisLabel("Male\n");
    scatterplot.draw(15,15,width-30,height-30);
    popMatrix();}
 }
  public void updateFlag(float _redraw1)
  {
    redraw1 = _redraw1;
  }
  public void mousePressed(){
    redraw();
  }
}
