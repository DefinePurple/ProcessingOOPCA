public class ScreenTwo {
  Box box;

  ScreenTwo() {
    box = new Box();
  }

  void render() {
    box.render();
    box.close.hover();
    box.close.render();
    box.submit.hover();
    box.submit.render();
  }

  void keyPress(char ch) {
    box.code.getCode(ch);
  }

  int mousePress(int screenID) {
    if (box.close.click()){
      
      return box.close.function;
    }
    else if (box.submit.click() && box.code.check()) {
        return box.submit.function;
    } else 
    return screenID;
  }
}