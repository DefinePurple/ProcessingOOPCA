class LaunchButton extends Button{
  LaunchButton(){
    pos = new PVector(width * 0.35f, height * 0.8f);
    sizeY = height * 0.1f;
    sizeX = width * 0.2f;
    pos.x -= (sizeX * 0.5f);
    pos.y -= (sizeY * 0.5f);
    
    hover = color(150);
    colour = color(60);
    
    c1 = 10;
    c2 = 10;
    c3 = 10;
    c4 = 10;
    
    text = "Launch Nuke";
    textSize = (sizeX + sizeY) * 0.09f;
  } 
  
  void update(){
    hover();
    render();
  }
}