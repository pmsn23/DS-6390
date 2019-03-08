//Muthu Palanisamy
//DS 7335 - Visualization of Information
//Mid Term
import controlP5.*;
ArrayList<String> features;

Controller myController;
Data rd;
Table table;
int numRows;
int chartWidth = 0;
int chartHeight = 0;
String name;
void settings()
{
  size(800,600);
  ArrayList<String> features = new ArrayList<String>();
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

void draw()
{
  background(0,0,255);
}

void mousePressed(){
  myController.updateView1();
  myController.updateView2();
}
