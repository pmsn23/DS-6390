void drawArea(int[] age, int[] value, int [] count, int[] male, int[] female){
  
  for (int i=0; i<value.length;i++){  
    values[i] = value[i];
    counts[i] = count[i];
    ages[i] = age[i];
    Male[i] = male[i];
    Female[i] = female[i];
   }
  
  lineChart1 = new XYChart(this);
  lineChart1.showXAxis(true); 
  lineChart1.showYAxis(true); 
  lineChart1.setMinY(0);
  lineChart1.setData(ages,values);
  lineChart1.setPointColour(color(255));
  lineChart1.setPointSize(3);
  lineChart1.setLineWidth(2);
  textSize(9);
  lineChart1.draw(15,15,width-30,height-30);
  
  textSize(15);
  text(name+" Age Vs. +ve Conditions", 200, 35);
  
}



  
