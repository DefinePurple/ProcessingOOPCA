class Box {
  PVector box;
  float sizeX, sizeY;
  Code code;

  CloseLaunchCode close;
  SubmitLaunchCode submit;

  Box() {
    sizeX = width * 0.75f;
    sizeY = height * 0.4f;
    box = new PVector(width * 0.5 - (sizeX * 0.5f), height * 0.5f - (sizeY * 0.5f));
    code = new Code();

    close = new CloseLaunchCode(sizeX, sizeY, box);
    submit = new SubmitLaunchCode(sizeX, sizeY, box);
  }

  void render() {
    textSize(50);
    fill(255);
    stroke(0);
    rect(box.x, box.y, sizeX, sizeY, 10);
    fill(0);
    text("Launch Code", box.x + sizeX * 0.5f, box.y + sizeY * 0.1f);

    float x, y, size;
    fill(170);
    noStroke();
    y =  box.y + sizeY * 0.5f - sizeY / 6;
    size = sizeX / 10;
    for (int i = 0; i < 4; i++) {
      x = box.x + (sizeX/4)*i + sizeX/8 - sizeX*0.05f;
      rect(x, y, size, size, 20);
    }

    fill(100);
    x = box.x + ((sizeX / 4) * (code.pos % 4)) + sizeX / 8 - sizeX * 0.05f;
    rect(x, y, size, size, 20);

    code.render(box, sizeX, sizeY);
  }
}