//CREATE MORE ENEMIES (USE AN ARRAY)
private class Radar {
  PVector origin;//The center of the radar
  int size; //Size of the radar
  
  Radar() {
    size = width/9 + height/9;
    
    origin = new PVector(width * 0.85f, height * 0.75f);
  }

  void render() {
    stroke(255);
    noFill();
    //Draws the circles of the radar
    for (int i=size; i>size/4; i-=size/4) {
      ellipse(origin.x, origin.y, i, i);
    }
  }

}