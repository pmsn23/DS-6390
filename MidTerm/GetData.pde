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
    int [] features = new int [numRows];
    if (table != null){
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
