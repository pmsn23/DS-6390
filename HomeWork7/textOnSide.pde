final static int NoFindings = 0;
final static int Enlarged_Cardio = 1;
final static int Cardiomegaly = 2;
final static int Lung_Opacity = 3;
final static int Lung_Lesion = 4;
final static int Pleural_effusion = 5;

void textOnSide(int switchval){
  textAlign(LEFT);
  textSize(20);
  fill(255, 255, 255);
  text("Age Wheel & Summary Statistics", 670, 20);
  int xPos = 740;
  int yPos = 220;
  switch(switchval){
      case NoFindings:
        text("No Findings",xPos,yPos);
        break;
      case Enlarged_Cardio:
        text("Enlarged Cardiomediastinum",xPos,yPos);        
        break;
      case Cardiomegaly:
        text("Cardiomegaly",xPos,yPos);        
        break;
      case Lung_Opacity:
        text("Lung Opacity",xPos,yPos);        
        break;
      case Lung_Lesion:
        text("Lung Lesion",xPos,yPos);        
        break;
      case Pleural_effusion:
        text("Pleural Effusion",xPos,yPos);        
        break;
  }
}  
