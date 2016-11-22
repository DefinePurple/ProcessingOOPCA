class Code {
  char[] usersCode;
  int pos;

  Code() {
    pos = 0;
    usersCode = new char[4];
    for (int i = 0; i < 4; i++)
      usersCode[i] = ' ';
  }

  void getCode(char ch) {
    char numbers[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    for (int i = 0; i < 10; i++) {
      if (ch == numbers[i]) {
        saveInput(key);
        pos++;
        if (pos >= 4)
          pos = 0;
      }
    }
  }

  void saveInput(char ch) {
    usersCode[pos] = ch;
  }

  void render(PVector box, float sizeX, float sizeY) {
    textSize(50);
    fill(0);
    float x, y;
    for (int i = 0; i < 4; i++) {
      x = box.x + (sizeX/4)*(i) + sizeX/8;
      y =  box.y + sizeY/2;
      text(usersCode[i], x, y);
    }
  }

  void initUsersCode() {
    for (int i = 0; i < 4; i++)
      usersCode[i] = ' ';
      
    pos = 0;
  }

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