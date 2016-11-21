class Timer{
  float delta;
  int minutes, seconds, milliseconds;  
  
  Timer(){ 
    minutes = 3;
    seconds = 59;
    milliseconds = 99;
  }
  
  void render(){
    fill(255);
    stroke(255);
    textSize(70);
   
    String strn = "Launching Nuke\n" + nf(minutes, 2, 0) + " : " + nf(seconds, 2, 0) + " : " + nf(milliseconds, 2, 0);
    text(strn, width/2, height/3);
  }
  
  void update(){
    

    if (minutes > 0 || seconds > 0 || milliseconds > 0 ) {
      milliseconds--;
      if (milliseconds < 0) {
        milliseconds = 99;
        seconds--;
      }

      if (seconds < 0) {
        seconds = 59;
        //seconds = 1;
        minutes--;
      }
    }

    
  }
}