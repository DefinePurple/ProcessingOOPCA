class ScreenThree {
  private AbortButton abort;

  ScreenThree() {
    abort = new AbortButton();
  }

  void render() {
    abort.hover();
    abort.render();
  }

  int mousePress(int screenID) {
    if (abort.click())
      return abort.function;
    else 
    return screenID;
  }
}//end ScreenThree