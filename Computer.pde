class Computer {
  String choice;
  
  public Computer() {
    choose();
  }
  
  void choose() {
    int rand = (int) random(0, 101);
    
    
    if (rand < 32) {
      choice = "rock";
    } else if (rand < 32 + 35) {
      choice =  "paper";
    } else {
      choice = "scissors";
    }
    
  }
  
  void choiceTxt() {
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE " + this.choice.toUpperCase(), 20, 700);
  }
}