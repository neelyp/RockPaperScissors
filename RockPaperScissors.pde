import processing.sound.*;

boolean buttonPressed1 = false;
boolean buttonPressed2 = false;
boolean buttonPressed3 = false;
boolean goButton = false;
boolean endScreen = false;
boolean rock = false;
boolean paper = false;
boolean scissors = false;
boolean comRock = false;
boolean comPaper = false;
boolean comScissors = false;
boolean cRock = false;
boolean cPaper = false;
boolean cScissors = false;
boolean win = false;
boolean lose = false;
boolean tie = false;
PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
float floatChoice = random(1, 3.001);
int comChoice = int(floatChoice);
import processing.sound.*;
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

  file = new SoundFile(this, "Music.mp3");
  file.loop();
}

void draw() {
  noStroke();
  rect(207.5, 300, 150, 50, 14);
  rect(564.5, 300, 150, 50, 14);
  rect(922.5, 300, 150, 50, 14);

  if (comChoice == 1) {
    comRock = true;
  }

  if (comChoice == 2) {
    comPaper = true;
  }

  if (comChoice == 3) {
    comScissors = true;
  }

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
    fill(214, 212, 212);
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

  if (comRock && rock) {
    tie = true;
  }

  if (comPaper && paper) {
    tie = true;
  }

  if (comScissors && scissors) {
    tie = true;
  }

  if (comRock && paper) {
    win = true;
  }

  if (comPaper && scissors) {
    win = true;
  }

  if (comScissors && rock) {
    win = true;
  }

  if (comRock && scissors) {
    lose = true;
  }

  if (comPaper && rock) {
    lose = true;
  }

  if (comScissors && paper) {
    lose = true;
  }

  if (win) {
    fill(227, 213, 195);
    rect(0, 0, 1280, 720);
    fill(255);
    textSize(50);
    textAlign(CENTER);
    text("YOU WON", 640, 100);
    image(img4, 390, 125);
  }

  if (tie) {
    fill(227, 213, 195);
    rect(0, 0, 1280, 720);
    fill(255);
    textSize(50);
    textAlign(CENTER);
    text("YOU TIED", 640, 100);
    image(img6, 500.5, 200);
  }

  if (lose) {
    fill(227, 213, 195);
    rect(0, 0, 1280, 720);
    fill(255);
    textSize(50);
    textAlign(CENTER);
    text("YOU LOST", 640, 100);
    image(img5, 424, 30);
  }
  
  if(cRock){
  if(comRock){
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE ROCK", 20, 700);
  }
  
  if(comPaper){
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE PAPER", 20, 700);
  }
  
  if(comScissors){
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE SCISSORS", 20, 700);
  }
  }
  
  if(cPaper){
  if(comRock){
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE ROCK", 20, 700);
  }
  
  if(comPaper){
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE PAPER", 20, 700);
  }
  
  if(comScissors){
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE SCISSORS", 20, 700);
  }
  }
  
  if(cScissors){
  if(comRock){
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE ROCK", 20, 700);
  }
  
  if(comPaper){
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE PAPER", 20, 700);
  }
  
  if(comScissors){
    textSize(50);
    textAlign(LEFT);
    text("COM CHOSE SCISSORS", 20, 700);
  }
  }
  
}

void mouseClicked() {
  if ((mouseX > 207.5) && (mouseX < 357.5) && (mouseY > 300) && (mouseY < 350)) {
    buttonPressed1 = true;
    rock = true;
    cRock = true;
  }

  if ((mouseX > 564.5) && (mouseX < 714.5) && (mouseY > 300) && (mouseY < 350)) {
    buttonPressed2 = true;
    paper = true;
    cPaper = true;
  }

  if ((mouseX > 922.5) && (mouseX < 1072.5) && (mouseY > 300) && (mouseY < 350)) {
    buttonPressed3 = true;
    scissors = true;
    cScissors = true;
  }
}
void keyPressed() {
  // Restart the game when any key is pressed
  buttonPressed1 = false;
  buttonPressed2 = false;
  buttonPressed3 = false;
  goButton = false;
  endScreen = false;
  rock = false;
  paper = false;
  scissors = false;
  comRock = false;
  comPaper = false;
  comScissors = false;
  cRock = false;
  cPaper = false;
  cScissors = false;
  win = false;
  lose = false;
  tie = false;
  floatChoice = random(1, 3.001);
  comChoice = int(floatChoice);
}
