private class ScreenThree {
  private AbortButton abort;
  Timer timer;
  Crack crack;
  
  ScreenThree() {
    abort = new AbortButton();
    timer = new Timer();
    crack = new Crack();
  }
  
  //Call each object in screen Three
  void render() {
    abort.hover();
    abort.render();
    timer.render();
    timer.update();
    
    if(timer.crack)
      crack.render();
  }
  
  //Checks if buttons are clicked 
  int mousePress(int screenID) {
    if (abort.click()){
      timer.initTimer();
      return abort.function;
    }else 
    return screenID;
  }
}//end ScreenThree