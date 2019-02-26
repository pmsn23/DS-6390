// Muthu Palani 
// Home Work7
// Following are the columns in the csv file
// Path, Sex, Age, Frontal/Lateral, AP/PA
// No Finding  Enlarged Cardiomediastinum  
// Cardiomegaly  Lung Opacity  Lung Lesion  
// Edema  Consolidation  Pneumonia  Atelectasis  
// Pneumothorax  Pleural Effusion  Pleural Other  
// Fracture  Support Devices
sumBar mySumBar; 
int [] age;
int [] totalRecords;
int outerR;
int innerR;
float theta;
Data cheXnet;
float bx;
float by;
int switchval = 0;

boolean overBox = false;
boolean locked = false;

float xOffset = 0.0; 
float yOffset = 0.0; 


void setup() {
  smooth();
  size(1030, 700);
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
 
  mySumBar = new sumBar(); 
  //noLoop();
  //frameRate(4);
}

void draw(){
  background(18, 120, 180);
  fill(0);
  textOnSide(switchval);
  translate(width/2-120, height/2);
  pushMatrix();
    ageRange();
    mySumBar.next(switchval);
    drawLine();
  popMatrix();
  noLoop();
}

void keyPressed(){
  if (keyCode == LEFT){
    switchval -= 1;
    if (switchval <= 0){
      switchval = 5;
    }
    mySumBar.next(switchval);
    redraw();
  }
  if (keyCode == RIGHT){
    switchval += 1;
    if (switchval == 6){
      switchval = 0;
    }
    mySumBar.next(switchval);
    redraw();
  }
}
