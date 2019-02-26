class sumBar{
  int distX = 350;
  int distY = 20;
  final static int NoFindings = 0;
  final static int Enlarged_Cardio = 1;
  final static int Cardiomegaly = 2;
  final static int Lung_Opacity = 3;
  final static int Lung_Lesion = 4;
  final static int Pleural_effusion = 5;
  
  public sumBar(){
    stroke(255, 2, 2);
    }
  public void drawBar(int male, int mPos, int mNeg, int female, int fPos, int fNeg)
  {
    print (mPos);
    pushMatrix();
      line (distX+10, 22, distX+20+6*18, 22);
      text("M + - F + -", distX+70, 40);
      stroke(241,250,15);
      fill(9,16,144);
      rect (10+distX, distY, 20, -male);
      rect (30+distX, distY, 20, -mPos);
      rect (50+distX, distY, 20, -mNeg);
      fill(234,21,234);
      rect (70+distX, distY, 20, -female);
      rect (90+distX, distY, 20, -fPos);
      rect (110+distX, distY, 20,-fNeg);
    popMatrix();
    }
  public void next(int switchval){
    switch(switchval){
      case NoFindings:
        drawBar(cheXnet.Male, cheXnet.mNofpositive, cheXnet.mNofnegative, cheXnet.Female, cheXnet.fNofpositive,cheXnet.fNofnegative);
        break;
      case Enlarged_Cardio:
        print(cheXnet.mEcpositive);
        drawBar(cheXnet.Male, cheXnet.mEcpositive, cheXnet.mEcnegative, cheXnet.Female, cheXnet.fEcpositive,cheXnet.fEcnegative);
        break;
      case Cardiomegaly:
        drawBar(cheXnet.Male, cheXnet.mCmpositive, cheXnet.mCmnegative, cheXnet.Female, cheXnet.fCmpositive,cheXnet.fCmnegative);
        break;
      case Lung_Opacity:
        drawBar(cheXnet.Male, cheXnet.mLopositive, cheXnet.mLonegative, cheXnet.Female, cheXnet.fLopositive,cheXnet.fLonegative);
        break;
      case Lung_Lesion:
        drawBar(cheXnet.Male, cheXnet.mLlpositive, cheXnet.mLlnegative, cheXnet.Female, cheXnet.fLlpositive,cheXnet.fLlnegative);
        break;
      case Pleural_effusion:
        drawBar(cheXnet.Male, cheXnet.mPEpositive, cheXnet.mPEnegative, cheXnet.Female, cheXnet.fPEpositive,cheXnet.fPEnegative);
        break;
    }
  }
}
