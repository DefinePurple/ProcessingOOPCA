class CloseLaunchCode extends Button {
  CloseLaunchCode(float sx, float sy, PVector box) {
    function = 1;

    sizeY = sy * 0.1f;
    sizeX = sx * 0.1f;
    pos = new PVector(box.x + (sizeX * 0.5f), box.y + (sizeY * 0.5f));
    pos.x -= (sizeX * 0.5f);
    pos.y -= (sizeY * 0.5f);
    pos.y += 0.5f;

    hover = color(160);
    colour = color(255);

    c1 = 10;
    c2 = 0;
    c3 = 30;
    c4 = 0;

    text = "X";
    textSize = (sizeX + sizeY) * 0.09f;
  } 

  void update() {
    hover();
    render();
  }
}