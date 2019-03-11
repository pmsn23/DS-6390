void drawArea(float[] age, float[] value, String name){
  
  lineChart1 = new XYChart(this);
  lineChart1.showXAxis(true); 
  lineChart1.showYAxis(true); 
  lineChart1.setMinY(0);
  lineChart1.setData(age,value);
  lineChart1.setPointColour(color(216,250,252,255));
  lineChart1.setPointSize(3);
  lineChart1.setLineWidth(3);
  textSize(10);
  lineChart1.setXAxisLabel("\nAge ");
  lineChart1.setYAxisLabel("Value\n");
  lineChart1.draw(15,15,width-30,height-30);
  textSize(15);
  text("Age Vs. +ve Conditions", 200, 35);
}



  
