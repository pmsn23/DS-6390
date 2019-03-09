class Data{

  String tableName;
  Table table;
  
  Data(String tableName_){
  
    tableName = tableName_;
  }
  Table readData(){
    
    try{
      table = loadTable("Data.csv","header");
    }
    catch(Exception e){
    
    }
    return table;
  }
  
  float[] getFeatures(String column){
    float [] features = {};
    if (table != null){
      features = new float[numRows];
      int i = 0; //dummy iterator
      for (TableRow row: table.rows()){
         features[i] = row.getFloat(column);
         //println(column);
         //println(features[i]);
         i++;
      }
    }  
    return features;
  }
  int getNumRows(){
    return table.getRowCount();
  }
}
