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
    timer.render();
    timer.update();
  }

  int mousePress(int screenID) {
    if (abort.click())
      return abort.function;
    else 
    return screenID;
  }
}//end ScreenThree