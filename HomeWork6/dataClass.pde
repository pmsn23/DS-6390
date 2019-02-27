class Data{

  int [] age = {};
  int [] totalRecords;
  String maleStr = "Male", femaleStr = "Female";
  int Male = 0, mPEnegative = 0, mPEpositive = 0;
  int Female = 0, fPEnegative = 0, fPEpositive = 0; 
  int maxAge = 0, minAge = 0;
  int [] ageSorted = {};
  
  Data (String path) throws Exception{
    Table cheXnet = loadTable(path, "header");
    totalRecords = new int[cheXnet.getRowCount()];
    age = new int [cheXnet.getRowCount()];
    
    int i=0; // dummy iterator
    
    for (TableRow row : cheXnet.rows()) {        
        String sex = row.getString("Sex");
        age[i] = row.getInt("Age");
        int pleuralEffusion = row.getInt("PleuralEffusion");  
        maxAge = max(maxAge, row.getInt("Age"));      
        if (sex.equals(maleStr) == true) {
           Male = Male + 1; 
           if (pleuralEffusion <= 0){
               mPEnegative = mPEnegative + 1;
           }else{
             mPEpositive = mPEpositive + 1;
           }
        } else {
          Female = Female + 1;
          if (pleuralEffusion == 0){
             fPEnegative = fPEnegative + 1;
           }else{
             fPEpositive = fPEpositive + 1;
           }
      i++;  
      }
    }  
    age = sort(age);
    for (int j = 0; j<age.length;j++){
      if (!valueIsInArray(age[j], ageSorted)) {
          ageSorted = append(ageSorted, age[j]);
      }
    }
  }

  boolean valueIsInArray(int v, int[] arr) {
    for (int i = 0; i < arr.length; i++) {
      if (v == arr[i]) {
        return true;
      }
    }
    return false;  
  }
}
