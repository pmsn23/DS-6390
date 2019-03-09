void drawArea(float[] age, float[] value, String name){
  
  lineChart1 = new XYChart(this);
  lineChart1.showXAxis(true); 
  lineChart1.showYAxis(true); 
  lineChart1.setMinY(0);
  lineChart1.setData(age,value);
  lineChart2.setPointColour(color(180,50,50,100));
  lineChart1.setPointSize(2);
  lineChart1.setLineWidth(2);
  textSize(9);
  lineChart1.setXAxisLabel("\nAge ");
  lineChart1.setYAxisLabel("Value\n");
  lineChart1.draw(15,15,width-30,height-30);
  
  //textSize(15);
  //text(name+" Age Vs. +ve Conditions", 200, 35);
}



  
