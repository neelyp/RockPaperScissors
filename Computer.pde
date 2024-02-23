class Computer {
  String choice;

  Computer() {
    choose();
  }

  void choose() {
    String[] choices = {"rock", "paper", "scissors"};
    choice = choices[int(random(choices.length))];
  }

  void choiceTxt() {
    text("COM CHOSE " + this.choice.toUpperCase(), 20, 700);

  }
}