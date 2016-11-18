class LaunchButton extends Button{
  LaunchButton(){
    pos = new PVector(width * 0.5f, height * 0.5f);
    sizeY = height * 0.1f;
    sizeX = width * 0.2f;
    pos.x -= (sizeX * 0.5f);
    pos.y -= (sizeY * 0.5f);
    
    colour = color(90);
    c1 = 10;
    c2 = 10;
    c3 = 10;
    c4 = 10;
  }
}