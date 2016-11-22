void setup() {
  fullScreen();
  defaults();

  screenOne = new ScreenOne();
  screenTwo = new ScreenTwo();
  screenThree = new ScreenThree();
  screenID = 1;
}

ScreenOne screenOne;
ScreenTwo screenTwo;
ScreenThree screenThree;
int screenID;

void draw() {
  background(30);
  if (screenID == 1)
    screenOne.render();
    
  if (screenID == 2)
    screenTwo.render();
    
  if (screenID == 3)
    screenThree.render();
}



void keyPressed() {
  if (screenID == 1)
    screenOne.keyPress(key);

  if (screenID == 2)
    screenTwo.keyPress(key);
}

void mousePressed() {
  if (screenID == 1){
    screenID = screenOne.mousePress(screenID);
    screenTwo.box.code.initUsersCode();
  }
  
  if (screenID == 2)
    screenID = screenTwo.mousePress(screenID);
    
  if (screenID == 3)
    screenID = screenThree.mousePress(screenID);
}

void defaults() {
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  stroke(255);
}