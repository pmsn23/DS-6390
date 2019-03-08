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
  
  int[] getFeatures(String column){
    int [] features = {};
    if (table != null){
      features = new int[numRows];
      int i = 0; //dummy iterator
      for (TableRow row: table.rows()){
         features[i] = row.getInt(column);
         i++;
      }
    }  
    return features;
  }
  int getNumRows(){
    return table.getRowCount();
  }
}
