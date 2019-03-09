//Muthu Palanisamy
//DS 7335 - Visualization of Information
//Mid Term
import org.gicentre.utils.stat.*;
import controlP5.*;
ControlP5 cp5;
DropdownList d1;
Controller myController;
int iniPosX = 50;
int iniPosY = 50;
String featureName;

float [] values =  new float [64];
float [] counts = new float [64];
float [] ages = new float [64];
float [] Male = new float [64];
float [] Female = new float [64];

XYChart lineChart1;
XYChart lineChart2;
XYChart scatterplot;

float currentIndex = 0;
int [] featureValues = {}; 
int [] featureValueCount = {};
int [] age = {};
int [] male = {};
int [] female = {};
int radius = 5;
Data rd;
ArrayList<String> features = new ArrayList<String>();
Table table;

int numRows;
int chartWidth = 0;
int chartHeight = 0;
String name;

void settings()
{
  size(400,200);
  name = "Pneumonia";
  features.add(name);
  name = "PleuralEffusion";
  features.add(name);

  myController = new Controller();
  // Load Data
  rd = new Data("Data.csv");
  table = rd.readData();
  numRows = rd.getNumRows();
  //println(numRows);
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
    featureName = Name;
    currentIndex = index;
    featureValues = rd.getFeatures(Name);
    featureValueCount = rd.getFeatures(Count);
    age = rd.getFeatures("Age");
    male = rd.getFeatures("Male");
    female = rd.getFeatures("Female");
  }
}
void draw()
{
  background(50,0,50);  
  cursor(CROSS);
  rectMode(CORNER);
  textAlign(CENTER, CENTER);
  fill(255);
  text("Age", width/2, height-15);
  cp5 = new ControlP5(this);
  // create a DropdownList
  d1 = cp5.addDropdownList("myList-d1")
    .setPosition(50, 10)
    .setSize(100, 100);
  customize(d1);
  strokeWeight(2);
  smooth();
  drawArea(age, featureValues, featureValueCount, male, female);
  d1.close();
}

void mousePressed(){
  myController.updateView1();
  myController.updateView2();
}
