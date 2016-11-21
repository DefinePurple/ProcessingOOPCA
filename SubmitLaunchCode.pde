class SubmitLaunchCode extends Button {
  SubmitLaunchCode(float sx, float sy, PVector box) {
    function = 3;

    sizeY = sy * 0.15f;
    sizeX = sx * 0.25f;
    pos = new PVector(box.x + (sx * 0.5f), box.y + sy - sizeY);
    pos.x -= (sizeX * 0.5f);
    pos.y -= (sizeY * 0.5f);
    pos.y += 0.5f; //button was not flush with the box

    hover = color(150);
    colour = color(205);

    c1 = 10;
    c2 = 10;
    c3 = 10;
    c4 = 10;

    text = "Submit";
    textSize = (sizeX + sizeY) * 0.09f;
  } 

  void update() {
    hover();
    render();
  }
}