class AbortButton extends Button{
  AbortButton(){
    function = 1;

    sizeY = height * 0.1f;
    sizeX = width * 0.15f;
    pos = new PVector(width * 0.5f, height * 0.8f);
    pos.x -= (sizeX * 0.5f);
    pos.y -= (sizeY * 0.5f);
    pos.y += 0.5f;

    colour = color(235, 30, 10);
    hover = color(200, 40, 25);

    c1 = 10;
    c2 = 10;
    c3 = 10;
    c4 = 10;

    text = "ABORT";
    textSize = (sizeX + sizeY) * 0.09f;
  }
}