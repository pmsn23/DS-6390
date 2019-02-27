int count=0;
int y;
void drawLine(){
  stroke(255,255,255);
  age = sort(cheXnet.age);
  for (int i = 0; i<cheXnet.ageSorted.length;i++){
      for (int j = 0; j<age.length;j++){
        if (cheXnet.ageSorted[i] == age[j]){
            count++;
        }else {
           rotate(theta);
           if (count == 0){
             y=0;
           }else{
             if (cheXnet.ageSorted[i] != 0){
             line(0,round(-innerR), 0, -(height/log(count)*.30));}
             count=0;
           }
        }
      }
  }
}
