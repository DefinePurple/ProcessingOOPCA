class Grid {
  void render() {
    stroke(60);
    fill(60);
    
    float gap = height * 0.05f;
    float current = 0;

    //HORIZONTAL LINE
    float x1 = 0;
    //Keeps drawing the grid line until the current position is off the screen
    while (current <= height) {
      pushMatrix();
      translate(0, current);//translates it by the current gap
      line(x1, -1, width, -1); //draws the line
      current += gap;//increases current by gap
      popMatrix();
    }//end while

    //VERTICAL LINE
    current = 0;
    float y1 = 0;
    //Keeps drawing the grid line until the current position is off the screen
    while (current <= width) {
      pushMatrix();
      translate(current, 0);//translates by the current gap
      line(-1, y1, -1, height);//draws the line
      current += gap;//increases current by gap
      popMatrix();
    }//end while
  }//end render();
}//end Grid