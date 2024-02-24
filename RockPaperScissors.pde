import processing.sound.*;

boolean increaseWin = false;

PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;

Computer computer;
Game game;
SoundFile file;

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
  game = new Game(img,img2,img3,img4,img5,img6);
  
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
  
  game.chkButtons();
  
  fill(0);
  textSize(25);
  text("ROCK", 250.5, 333);
  text("PAPER", 605.5, 333);
  text("SCISSORS", 945.5, 333);
  fill(255);
  
  image(img, 130, 15, 323.33333, 262);
  image(img2, 480, 15, 323.33333, 262);
  image(img3, 850, 15, 323.33333, 262);
  
  game.endScreen();
  game.setRes();
  game.results();
  game.wins();
}

void mouseClicked() {
  game.pressBtns();
  computer.choose();
  game.setRes();
}

void keyPressed() {
  game.resetGame();
  increaseWin = false;
  background(227, 213, 195);
}
