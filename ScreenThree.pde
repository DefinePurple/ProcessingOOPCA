class ScreenThree {
  private AbortButton abort;
  Timer timer;
  
  ScreenThree() {
    abort = new AbortButton();
    timer = new Timer();
  }

  void render() {
    abort.hover();
    abort.render();
    timer.update();
    timer.render();
    
  }

  int mousePress(int screenID) {
    if (abort.click()){
      timer.initTimer();
      return abort.function;
    }else 
    return screenID;
  }
}//end ScreenThree