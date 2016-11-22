class ScreenThree {
  private AbortButton abort;
  Timer timer;
  Crack crack;
  
  ScreenThree() {
    abort = new AbortButton();
    timer = new Timer();
    crack = new Crack();
  }

  void render() {
    abort.hover();
    abort.render();
    timer.update();
    timer.render();
    if(timer.crack)
      crack.render();
  }

  int mousePress(int screenID) {
    if (abort.click()){
      timer.initTimer();
      return abort.function;
    }else 
    return screenID;
  }
}//end ScreenThree