// Muthu Palani 
// Home Work6
// Following are the columns in the csv file
// Path, Sex, Age, Frontal/Lateral, AP/PA
// No Finding  Enlarged Cardiomediastinum  
// Cardiomegaly  Lung Opacity  Lung Lesion  
// Edema  Consolidation  Pneumonia  Atelectasis  
// Pneumothorax  Pleural Effusion  Pleural Other  
// Fracture  Support Devices

int [] age;
int [] totalRecords;
int outerR;
int innerR;
float theta;
Data cheXnet;
float bx;
float by;

boolean overBox = false;
boolean locked = false;

float xOffset = 0.0; 
float yOffset = 0.0; 


void setup() {
  smooth();
  size(1000, 700);
  outerR = round(height/2 * 0.9);
  innerR = round(height/2 * 0.2);
  bx = width/2.0;
  by = height/2.0;
  
  try {
    cheXnet = new Data("valid.csv");
  }
  catch(Exception obj) {
    print("Error reading the data file: ", obj.getMessage());
    System.exit(0);
  }
  
  theta = TWO_PI / (cheXnet.maxAge/1.70);
  println("Total Records (Male): " +cheXnet.Male);
  println("Male with Positive Pleural Effusion: " +cheXnet.mPEpositive);
  println("Male with Negative Pleural Effusion: " +cheXnet.mPEnegative);
  println("Total Records (Female): " +cheXnet.Female);
  println("Female with Positive Pleural Effusion: " +cheXnet.fPEpositive);
  println("Female with Negative Pleural Effusion: " +cheXnet.fPEnegative);
  println("Max Age: " +cheXnet.maxAge);
 
  noLoop();
}

void draw(){
  background(18, 120, 180);
  fill(0);
  textOnSide();
  translate(width/2-50, height/2);
  pushMatrix();
    ageRange();
    drawBar();
    drawLine();
  popMatrix();
  
}
