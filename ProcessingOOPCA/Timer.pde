private class Timer {
  float seconds; 
  float previous;
  boolean crack;
  
  Timer() { 
    initTimer();
  }
  
  //Initialise the timer
  void initTimer(){
    seconds = 11;
    previous = second();
    crack = false;
  }
  
  //Draw to the screen
  void render() {
    fill(200);
    stroke(255);
    textSize(70);

    String strn = "Launching Nuke\n" + nf(0, 2, 0) + " : " + nf(seconds % 60, 2, 0);
    text(strn, width/2, height/3);
  }
  
  //Calculates the timer. If time has changed, decrement the variable for seconds
  void update() {
    if(seconds != 0 && previous != second()) {
      seconds--; 
    }
    //if time is 0, crack the screen
    if(seconds == 0)
      crack = true;

    previous = second();
  }
}