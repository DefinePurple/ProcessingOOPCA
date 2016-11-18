void setup(){
  fullScreen();
  defaults();
  
  screenOne = new ScreenOne();
  screenTwo = new ScreenTwo();
  screenThree = new ScreenThree();
}

ScreenOne screenOne;
ScreenTwo screenTwo;
ScreenThree screenThree;

void draw(){
  background(30);
  
  screenOne.renderGrid();
}

void defaults(){
  textAlign(CENTER,CENTER);
  textSize(20);
  fill(255);
  stroke(255);
}