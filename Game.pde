class Game {
  int wins = 0;
  boolean rock = false;
  boolean paper = false;
  boolean scissors = false;
  boolean win = false;
  boolean lose = false;
  boolean tie = false;
  boolean buttonPressed1 = false;
  boolean buttonPressed2 = false;
  boolean buttonPressed3 = false;
  boolean goButton = false;
  boolean endScreen = false;
  
  PImage img,img2,img3,img4,img5,img6;
  
  public Game(PImage img, PImage img2, PImage img3, PImage img4, PImage img5, PImage img6) {
    	this.img = img;
    	this.img2 = img2;
    	this.img3 = img3;
    	this.img4 = img4;
    	this.img5 = img5;
    	this.img6 = img6;
  }
  
  public void restartText() {
    	text("Press enter to restart", 626, 628);
  }
  
  public void wins() {
    	textSize(30);
    	text("Win Streak: " + wins, 15, 30);
  }
  
  public void incWin() {
    	++this.wins;
  }
  
  public void resetWin() {
    	this.wins = 0;
  }
  
  public void setRes() {
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
  }
  
  private void resTxt(String res) {
    	fill(227, 213, 195);
    	rect(0, 0, 1280, 720);
    	fill(255);
    	textSize(50);
    	textAlign(CENTER);
    	if (res.equals("won")) {
      text("YOU " + res.toUpperCase(), 640, 100);
      this.restartText();
    	} else if (res.equals("lost")) {
      text("YOU " + res.toUpperCase(), 640, 100);
      this.restartText();
    	} else {
      text("YOU " + res.toUpperCase(), 640, 100);
      this.restartText();
    	}
  }
  
  public void results() {
    	if (win) {
      img4 = loadImage("Win.png");
      this.resTxt("won");
      image(img4, 390, 125);
      
      if (!increaseWin) {
        this.incWin();
        increaseWin = true;
      }
    	} else if (tie) {
      img6 = loadImage("Tie.png");
      
      this.resTxt("tied");
      image(img6, 500.5, 200);
    	} else if (lose) {
      img5 = loadImage("Lose.png");
      
      this.resTxt("lost");
      image(img5, 424, 30);
      this.resetWin();
    	}
    	
    	if (this.rock || this.scissors || this.paper) {
      if (computer.choice.equals("rock")) {
        computer.choiceTxt();
      } else if (computer.choice.equals("paper")) {
        computer.choiceTxt();
      } else if (computer.choice.equals("scissors")) {
        computer.choiceTxt();
      }
    }
  }
  
  public void resetGame() {
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
  }
  
  private void pressedDraw() {
    	fill(163, 155, 155);
    	rect(207.5, 300, 150, 50, 14);
    	fill(255);
    	rect(564.5, 300, 150, 50, 14);
    	rect(922.5, 300, 150, 50, 14);
  }
  
  public void chkButtons() {
    	if (buttonPressed1 || buttonPressed2 || buttonPressed3) 
      this.pressedDraw();
    	else 
      fill(255);
  }
  
  public void pressBtns() {
    	if ((mouseX > 207.5) && (mouseX < 357.5) && (mouseY > 300) && (mouseY < 350)) {
      buttonPressed1 = true;
      this.rock = true;
    	}
    	
    	if ((mouseX > 564.5) && (mouseX < 714.5) && (mouseY > 300) && (mouseY < 350)) {
      buttonPressed2 = true;
      this.paper = true;
    	}
    	
    	if ((mouseX > 922.5) && (mouseX < 1072.5) && (mouseY > 300) && (mouseY < 350)) {
      buttonPressed3 = true;
      this.scissors = true;
    	}
  }
  
  public void endScreen() {
    if (endScreen) {
      fill(227, 213, 195);
      rect(0, 0, 1280, 720);
    }
  }
}