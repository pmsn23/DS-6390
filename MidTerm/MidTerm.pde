//Muthu Palanisamy
//DS 7335 - Visualization of Information
//Mid Term

import controlP5.*;
ControlP5 cp5;
DropdownList d1;
Controller myController;
int iniPosX = 50;
int iniPosY = 50;

int currentIndex = 0;
int [] featureValues = {}; 
int [] featureValueCount = {};
int [] age = {};
int radius = 5;
int draw = 0;
Data rd;
ArrayList<String> features = new ArrayList<String>();
Table table;

int numRows;
int chartWidth = 0;
int chartHeight = 0;
String name;

void settings()
{
  size(800,600);
  name = "Pneumonia";
  features.add(name);
  name = "PleuralEffusion";
  features.add(name);

  myController = new Controller();
  // Load Data
  rd = new Data("Data.csv");
  table = rd.readData();
  numRows = rd.getNumRows();
  println(numRows);
}

void customize(DropdownList ddl)
{
  ddl.setBackgroundColor(color(190));
  ddl.setItemHeight(20);
  ddl.setBarHeight(15);
  ddl.setCaptionLabel("Features");

  for (int i=0; i<features.size(); i++) {
    ddl.addItem(features.get(i), i);
  }
  ddl.setColorBackground(color(60));
  ddl.setColorActive(color(255, 128));
}
void controlEvent(ControlEvent theEvent) {
  if (theEvent.isController()) {
    int index = (int)theEvent.getController().getValue();
    String Name = features.get(index)+" +ve";
    String Count = features.get(index)+" Count";
    draw = 1;
    featureValues = rd.getFeatures(Name);
    featureValueCount = rd.getFeatures(Count);
    age = rd.getFeatures("Age");
  }
}
void draw()
{
  background(0,0,255);  
  cursor(CROSS);
  rectMode(CORNER);
  textAlign(CENTER, CENTER);
  fill(0);
  text("Age", width/2, height - 25);
  cp5 = new ControlP5(this);
  // create a DropdownList
  d1 = cp5.addDropdownList("myList-d1")
    .setPosition(10, 10)
    .setSize(300, 200);
  customize(d1);
  d1.close();
  drawArea(age, featureValues, featureValueCount);
}

void mousePressed(){
  myController.updateView1();
  myController.updateView2();
}
