class Grid {
  void render() {
    stroke(60);
    fill(60);
    float gap = height * 0.05f;
    float current = 0;
    
    float x1 = 0;
    float x2 = width;
    while (current <= height) {
      pushMatrix();
      translate(0, current);
      line(x1, -1, x2, -1);
      current += gap;
      popMatrix();
    }

    current = 0;
    float y1 = 0;
    float y2 = width;
    while (current <= width) {
      pushMatrix();
      translate(current, 0);
      line(-1, y1, -1, y2);
      current += gap;
      popMatrix();
    }
    
    //creates the large vertical graph line
    stroke(255);
    float borderY = height * 0.1f;
    float borderX = width * 0.05f;
    float lineSize = map(height, 0, height, borderY, height - (borderY * 2));
    y1 = map(0, 0, height, borderY, height - borderY);
    y2 = y1 + lineSize;
    x1 = map(0, 0, width, borderX, width - borderX);
    x2 = x1;
    line(x1, y1, x2, y2);
    
    //Creates the small incremented lines on the vertical graph line
    current = 0;
    while (current <= lineSize) {
      pushMatrix();
      translate(0, current);
      line(x1, y1, x1 + 5, y1);
      current += gap;
      popMatrix();
    }
    
    //creates the large horizontal graph line
    y1 = y2;
    lineSize = map(width, 0, width, borderX, width - (borderX * 2));
    x1 = map(0, 0, width, borderX, width - borderX);
    x2 = x1 + lineSize;
    line(x1, y1, x2, y2);
    
    
  }
}