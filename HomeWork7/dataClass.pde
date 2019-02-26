class Data{

  int [] age = {};
  int [] totalRecords;
  String maleStr = "Male", femaleStr = "Female";
  int Male = 0; 
  int mPEnegative = 0, mPEpositive = 0;
  int mNofnegative = 0, mNofpositive = 0;
  int mEcnegative = 0, mEcpositive = 0;
  int mLonegative = 0, mLopositive = 0;
  int mLlnegative = 0, mLlpositive = 0;
  int mCmnegative = 0, mCmpositive = 0;
 
  int Female = 0; 
  int fPEnegative = 0, fPEpositive = 0; 
  int fNofnegative = 0, fNofpositive = 0; 
  int fEcnegative = 0, fEcpositive = 0; 
  int fLonegative = 0, fLopositive = 0; 
  int fLlnegative = 0, fLlpositive = 0; 
  int fCmnegative = 0, fCmpositive = 0; 
  
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
        int NoFinding = row.getInt("No Finding");
        int Cardiomegaly = row.getInt("Cardiomegaly");
        int EnlargedCardio = row.getInt("Enlarged Cardiomediastinum");
        int LungOpacity = row.getInt("Lung Opacity");
        int LungLesion = row.getInt("Lung Lesion");
        int pleuralEffusion = row.getInt("PleuralEffusion");  
        
        maxAge = max(maxAge, row.getInt("Age"));      
        if (sex.equals(maleStr) == true) {
           Male = Male + 1;
           // Pleural Effusion
           if (pleuralEffusion <= 0){
               mPEnegative = mPEnegative + 1;
           }else{
             mPEpositive = mPEpositive + 1;
           }
           // No Findings
           if (NoFinding <= 0){
               mNofnegative = mNofnegative + 1;
           }else{
             mNofpositive = mNofpositive + 1;
           }
           // Cardiomegaly
           if (Cardiomegaly <= 0){
               mCmnegative = mCmnegative + 1;
           }else{
             mCmpositive = mCmpositive + 1;
           }
           
           // Enlarged Cardiomediastinum 
           if (EnlargedCardio <= 0){
               mEcnegative = mEcnegative + 1;
           }else{
             mEcpositive = mEcpositive + 1;
           }
           // Lung Opacity
           if (LungOpacity <= 0){
               mLonegative = mLonegative + 1;
           }else{
             mLopositive = mLopositive + 1;
           }
           //Lung Lesion
           if (LungLesion <= 0){
               mLlnegative = mLlnegative + 1;
           }else{
             mLlpositive = mLlpositive + 1;
           }
           
           
        } else {
          Female = Female + 1;
          // Pleural Effusion
          if (pleuralEffusion <= 0){
             fPEnegative = fPEnegative + 1;
           }else{
             fPEpositive = fPEpositive + 1;
           }
           // No Finding
           if (NoFinding <= 0){
             fNofnegative = fNofnegative + 1;
           }else{
             fNofpositive = fNofpositive + 1;
           }
           // Cardiomegaly
          if (Cardiomegaly <= 0){
             fCmnegative = fCmnegative + 1;
           }else{
             fCmpositive = fCmpositive + 1;
           }
           // Enlarged Cardiomediastinum 
           if (EnlargedCardio <= 0){
             fEcnegative = fEcnegative + 1;
           }else{
             fEcpositive = fEcpositive + 1;
           }
           // Lung Opacity
           if (LungOpacity <= 0){
             fLonegative = fLonegative + 1;
           }else{
             fLopositive = fLopositive + 1;
           }
           //Lung Lesion
           if (LungLesion <= 0){
             fLlnegative = fLlnegative + 1;
           }else{
             fLlpositive = fLlpositive + 1;
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
