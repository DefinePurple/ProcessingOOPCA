class Timer {
  float delta;
  float seconds, time; 
  float previous;
  boolean crack;
  
  Timer() { 
    initTimer();
  }
  
  void initTimer(){
    seconds = 11;
    previous = second();
    delta = second();
    crack = false;
  }
  
  void render() {
    fill(200);
    stroke(255);
    textSize(70);

    String strn = "Launching Nuke\n" + nf(0, 2, 0) + " : " + nf(seconds % 60, 2, 0);
    text(strn, width/2, height/3);
  }

  void update() {
    if(seconds != 0 && previous != second()) {
      seconds--; 
    }
    
    if(seconds == 0)
      crack = true;

    previous = second();
  }
}