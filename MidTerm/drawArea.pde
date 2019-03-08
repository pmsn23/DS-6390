void drawArea(int[] age, int[] value, int [] count){
  
  for (int i=0; i<value.length;i++){
    if (i+1 < value.length){
      println(age[i], value[i], count[i]);
      //line(value[i],value[i], value[i+1],value[i+1]);
    }
  }
}
  
