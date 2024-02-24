class Computer {
  String choice;
  
  public Computer() {
    choose();
  }
  
  void choose() {
    String[] choices = {"rock", "paper", "scissors"};
    choice = choices[int(random(choices.length))];
  }
  
  void choiceTxt() {
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE " + this.choice.toUpperCase(), 20, 700);
  }
}