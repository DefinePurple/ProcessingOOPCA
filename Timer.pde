class Timer {
  float delta;
  float minutes, seconds, milliseconds;  

  Timer() { 
    initTimer();
  }
  
  void initTimer(){
    minutes = 2;
    seconds = 60;
    delta = second();
  }
  
  void render() {
    fill(255);
    stroke(255);
    textSize(70);

    String strn = "Launching Nuke\n" + nf(minutes, 2, 0) + " : " + nf(seconds % 60, 2, 0);
    text(strn, width/2, height/3);
  }

  void update() {
    if(seconds != 0 && minutes != 0) {
      seconds = (60 - (second() - delta)); 
      if(seconds % 60 == 0)
        minutes--;
    }
  }
}