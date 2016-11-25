public class ScreenTwo {
  Box box;

  ScreenTwo() {
    box = new Box();
  }
  
  //draws each part of the screen
  void render() {
    box.render();
    box.close.hover();
    box.close.render();
    box.submit.hover();
    box.submit.render();
  }

  //calls function to check and input code
  void keyPress(char ch) {
    box.code.getCode(ch);
  }
  
  //Checks if a button has been clicked
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