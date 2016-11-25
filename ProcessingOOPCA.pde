/*Author: Daniel Fitzpatrick
 Description: Hud for a submarine which launches a nuclear warhead
 
 All buttons are used with the mouse. A button is identified when you hover over it 
 
 On screen one:
 Q & W - Increase & decrease the waves period
 A & S - Increase & decrease the waves amplitude
 
 On screen two:
 Use numbers { 0 - 9 } to enter the launch code (2314)
 
 
 **********LAUNCH CODE IS 2314*************
 */


ScreenOne screenOne;//Controls all of screen one
ScreenTwo screenTwo;//Controls all of screen two
ScreenThree screenThree;//Controls all of screen three 
int screenID;//Used to determine which screen to draw

void setup() {
  fullScreen();
  defaults();

  screenOne = new ScreenOne();//init screen one
  screenTwo = new ScreenTwo();//init screen two
  screenThree = new ScreenThree();//init screen three
  screenID = 1;//start off on screen one
}

void draw() {
  background(30);
  //if screen id is 1, draw screen one
  if (screenID == 1)
    screenOne.render();

  //if screen id is 2, draw screen two
  if (screenID == 2)
    screenTwo.render();

  //if screen id is 3, draw screen three
  if (screenID == 3)
    screenThree.render();
}



void keyPressed() {
  //If the screen is screen one, then check for all of screen ones possible key presses
  if (screenID == 1)
    screenOne.keyPress(key);

  //If the screen is screen two, then check for all of screen twos possible key presses
  if (screenID == 2)
    screenTwo.keyPress(key);
}

void mousePressed() {
  //If the screen is screen on, check for button clicks
  if (screenID == 1) {
    screenID = screenOne.mousePress(screenID);
    //if the screen changed to screen two, initialise the code that can be entered 
    if(screenID == 2)
      screenTwo.box.code.initUsersCode();
  }

  //if the screen is screen two, check for button clicks
  if (screenID == 2)
    screenID = screenTwo.mousePress(screenID);

  //if the screen is screen three, check for button clicks
  if (screenID == 3)
    screenID = screenThree.mousePress(screenID);
}


/* DEFAULTS FOR STROKE COLOUR / FILL COLOUR / ETC */
void defaults() {
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  stroke(255);
}