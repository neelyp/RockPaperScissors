import processing.sound.*;

boolean buttonPressed1 = false;
boolean buttonPressed2 = false;
boolean buttonPressed3 = false;
boolean goButton = false;
boolean endScreen = false;
boolean rock = false;
boolean paper = false;
boolean scissors = false;
boolean win = false;
boolean lose = false;
boolean tie = false;
boolean increaseWin = false;

int wins = 0;

PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;

Computer computer;

SoundFile file;

void restartText() {
  text("Press any button to restart", 626, 628);
}

void wins() {
  text("Win Streak: " + wins, 100,80);
}



void setup() {
  size(1280, 720);
  background(227, 213, 195);
  img = loadImage("Rock.png");
  img2 = loadImage("Paper.png");
  img3 = loadImage("Scissors.png");
  img4 = loadImage("Win.png");
  img5 = loadImage("Lose.png");
  img6 = loadImage("Tie.png");
  computer = new Computer();
  
  file = new SoundFile(this, "Music.mp3");
  file.loop();
}

void draw() {
  noStroke();
  rect(207.5, 300, 150, 50, 14);
  rect(564.5, 300, 150, 50, 14);
  rect(922.5, 300, 150, 50, 14);
  
  if ((mouseX > 207.5) && (mouseX < 357.5) && (mouseY > 300) && (mouseY < 350)) {
    fill(214, 212, 212);
    rect(207.5, 300, 150, 50, 14);
    fill(255);
    rect(564.5, 300, 150, 50, 14);
    rect(922.5, 300, 150, 50, 14);
  } else {
    fill(255);
  }
  
  if ((mouseX > 564.5) && (mouseX < 714.5) && (mouseY > 300) && (mouseY < 350)) {
    fill(214, 212,212);
    rect(564.5, 300, 150, 50, 14);
    fill(255);
    rect(207.5, 300, 150, 50, 14);
    rect(922.5, 300, 150, 50, 14);
  } else {
    fill(255);
  }
  
  if ((mouseX > 922.5) && (mouseX < 1072.5) && (mouseY > 300) && (mouseY < 350)) {
    fill(214, 212, 212);
    rect(922.5, 300, 150, 50, 14);
    fill(255);
    rect(207.5, 300, 150, 50, 14);
    rect(564.5, 300, 150, 50, 14);
  } else {
    fill(255);
  }
  
  if (buttonPressed1) {
    fill(163, 155, 155);
    rect(207.5, 300, 150, 50, 14);
    fill(255);
    rect(564.5, 300, 150, 50, 14);
    rect(922.5, 300, 150, 50, 14);
  } else {
    fill(255);
  }
  
  if (buttonPressed2) {
    fill(163, 155, 155);
    rect(564.5, 300, 150, 50, 14);
    fill(255);
    rect(207.5, 300, 150, 50, 14);
    rect(922.5, 300, 150, 50, 14);
  } else {
    fill(255);
  }
  
  if (buttonPressed3) {
    fill(163, 155, 155);
    rect(922.5, 300, 150, 50, 14);
    fill(255);
    rect(207.5, 300, 150, 50, 14);
    rect(564.5, 300, 150, 50, 14);
  } else {
    fill(255);
  }
  
  fill(0);
  textSize(25);
  text("ROCK", 250.5, 333);
  text("PAPER", 605.5, 333);
  text("SCISSORS", 945.5, 333);
  fill(255);
  
  image(img, 130, 15, 323.33333, 262);
  image(img2, 480, 15, 323.33333, 262);
  image(img3, 850, 15, 323.33333, 262);
  
  if (endScreen) {
    fill(227, 213, 195);
    rect(0, 0, 1280, 720);
  }
  
  if (computer.choice.equals("rock") && rock) {
    tie = true;
  }
  
  if (computer.choice.equals("paper") && paper) {
    tie = true;
  }
  
  if (computer.choice.equals("scissors") && scissors) {
    tie = true;
  }
  
  if (computer.choice.equals("rock") && paper) {
    win = true;
  }
  
  if (computer.choice.equals("paper") && scissors) {
    win = true;
  }
  
  if (computer.choice.equals("scissors") && rock) {
    win = true;
  }
  
  if (computer.choice.equals("rock") && scissors) {
    lose = true;
  }
  
  if (computer.choice.equals("paper") && rock) {
    lose = true;
  }
  
  if (computer.choice.equals("scissors") && paper) {
    lose = true;
  }
  
  if (win) {
    fill(227, 213, 195);
    rect(0, 0, 1280, 720);
    fill(255);
    textSize(50);
    textAlign(CENTER);
    text("YOU WON", 640, 100);
    restartText();
    image(img4, 390, 125);
    
    if (!increaseWin) {
      ++wins;
      increaseWin = true;
    }
  } else if (tie) {
    fill(227, 213, 195);
    rect(0, 0, 1280, 720);
    fill(255);
    textSize(50);
    textAlign(CENTER);
    text("YOU TIED", 640, 100);
    restartText();
    image(img6, 500.5, 200);
  } else if (lose) {
    fill(227, 213, 195);
    rect(0, 0, 1280, 720);
    fill(255);
    textSize(50);
    textAlign(CENTER);
    text("YOU LOST", 640, 100);
    restartText();
    image(img5, 424, 30);
    wins = 0;
  }
  
  if (computer.choice.equals("rock")) {
    textSize(50);
    textAlign(LEFT);
    computer.choiceTxt();
  } else if (computer.choice.equals("paper")) {
    textSize(50);
    textAlign(LEFT);
    computer.choiceTxt();
  } else if (computer.choice.equals("scissors")) {
    textSize(50);
    textAlign(LEFT);
    computer.choiceTxt();
  }
  wins();
}

void mouseClicked() {
  if ((mouseX > 207.5) && (mouseX < 357.5) && (mouseY > 300) && (mouseY < 350)) {
    buttonPressed1 = true;
    rock = true;
  }
  
  if ((mouseX > 564.5) && (mouseX < 714.5) && (mouseY > 300) && (mouseY < 350)) {
    buttonPressed2 = true;
    paper = true;
  }
  
  if ((mouseX > 922.5) && (mouseX < 1072.5) && (mouseY > 300) && (mouseY < 350)) {
    buttonPressed3 = true;
    scissors = true;
  }
  computer.choose();
}

void keyPressed() {
  buttonPressed1 = false;
  buttonPressed2 = false;
  buttonPressed3 = false;
  goButton = false;
  endScreen = false;
  rock = false;
  paper = false;
  scissors = false;
  win = false;
  lose = false;
  tie = false;
  increaseWin = false;
  background(227, 213, 195);
}
