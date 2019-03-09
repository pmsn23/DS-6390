class View extends PApplet
{
  ArrayList<String> sex = new ArrayList<String>();
  private Controller controller;
  private float redraw;
  String Name;
  DropdownList d2;
  
  public View(Controller _controller){
    controller = _controller;
  }
  public void settings()
  {
    this.size(800,400);
    name = "Male";
    sex.add(name);
    name = "Female";
    sex.add(name);
  }
  public void controlEvent(ControlEvent theEvent) {
  if (theEvent.isController()) {
    int index = (int)theEvent.getController().getValue();
    Name = sex.get(index);
  }
} 
void customize(DropdownList ddl)
{
  ddl.setBackgroundColor(color(190));
  ddl.setItemHeight(20);
  ddl.setBarHeight(15);
  ddl.setCaptionLabel("Sex");

  for (int i=0; i<sex.size(); i++) {
    ddl.addItem(sex.get(i), i);
  }
  ddl.setColorBackground(color(60));
  ddl.setColorActive(color(255, 128));
}

  public void draw()
  {
    this.background(178,207,252);
    cp6 = new ControlP5(this);
    d2 = cp6.addDropdownList("myList-d2")
    .setPosition(50, 10)
    .setSize(100, 100);
    customize(d2);
    strokeWeight(2);
    smooth();
  
    if (currentIndex > 0){
      pushMatrix();
        scatterplot = new XYChart(this);
        if (Name == "Male"){
          scatterplot.setData(age,male);
          scatterplot.setYAxisLabel("Male\n");
        }
          else{
          scatterplot.setData(age,female);
          scatterplot.setYAxisLabel("Female\n");  
      }
        scatterplot.setData(age,female);
        scatterplot.showXAxis(true); 
        scatterplot.showYAxis(true);
        scatterplot.setPointColour(color(180,50,50,100));
        scatterplot.setXAxisLabel("\nAge ");
        scatterplot.draw(15,15,width-30,height-30);
      popMatrix();}
    
    d2.close();

 }
  public void updateFlag(float _redraw)
  {
    redraw = _redraw;
  }
  public void mousePressed(){
      redraw += 1;
      myController.resetView();
  }
}
