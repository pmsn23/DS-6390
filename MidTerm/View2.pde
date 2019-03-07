class View2 extends PApplet
{
  private Controller controller;
  private float radius;
  public View2(Controller _controller){
    controller = _controller;
  }
  public void settings()
  {
    this.size(800,600);
  }
  
  public void draw()
  {
    this.background(0,255,0);
    this.pushMatrix();
      translate(this.width/2, this.height/2);
      rect(0,0,radius, radius);
    this.popMatrix();
  }
  public void updateRadius(float _radius)
  {
    radius = _radius;
  }
  public void mousePressed()
  {
     controller.updateView1();
  }
  
}
