class Code {
  char[] usersCode;//Character array which holds the users code
  int pos;//current position in array that the next number should be entered

  Code() {
    pos = 0;
    usersCode = new char[4];
    for (int i = 0; i < 4; i++)
      usersCode[i] = ' ';
  }

  void getCode(char ch) {
    //Array of characters allowed to be entered
    char numbers[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    for (int i = 0; i < numbers.length; i++) {
      //checks if the key is valid and can be input
      if (ch == numbers[i]) {
        saveInput(key);//inputs key into array 
        pos++;//increments position in array
        if (pos >= 4)//resets position if gone past 4th position
          pos = 0;
      }
    }
  }

  void saveInput(char ch) {
    usersCode[pos] = ch;//sets current position in array to the key
  }

  void render(PVector box, float sizeX, float sizeY) {
    textSize(50);
    fill(0);
    float x, y;
    //Draws the current code which is entered
    for (int i = 0; i < 4; i++) {
      x = box.x + (sizeX/4)*(i) + sizeX/8;
      y =  box.y + sizeY/2;
      text(usersCode[i], x, y);
    }
  }

  /* Initialises the users code and position */
  void initUsersCode() {
    for (int i = 0; i < 4; i++)
      usersCode[i] = ' ';
      
    pos = 0;
  }
  
  //Checks if the code is right and returns a boolean
  boolean check() {
    char code[] = {'2', '3', '1', '4'};
    if (usersCode[0] == code[0] && usersCode[1] == code[1] && usersCode[2] == code[2] && usersCode[3] == code[3]) {
      return true;
    } else {
      initUsersCode();
      return false;
    }
  }
}