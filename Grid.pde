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
    
    stroke(255);
    float border = height * 0.1f;    
    float lineSize = map(height, 0, height, border, height - border);
    x1 = 0;
    x2 = 0;
    y1 = 0;
    y2 = lineSize;
    y1 = map(y1, 0, height, border, height - border);
    x1 = map(x1, 0, width, border, width - border);
    x2 = map(x2, 0, width, border, width - border);
    gap = lineSize * 0.05f;
    current = 0;
    line(x1, y1, x2, y2);
    while (current <= lineSize - border){
      pushMatrix();
      translate(0, current);
      line(x1, y1, x2+5, y1);
      current += gap;
      popMatrix();
    }
  }
}