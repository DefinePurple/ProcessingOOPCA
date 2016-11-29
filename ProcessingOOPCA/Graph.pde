class Graph {
  void render() {
    stroke(60);
    fill(60);
    float gap = height * 0.05f;

    //creates the large vertical graph line
    stroke(255);
    float borderY = height * 0.05f;
    float borderX = width * 0.025f;
    float lineSize = map(height, 0, height, borderY, height - (borderY * 2));
    float y1 = map(0, 0, height, borderY, height - borderY);
    float y2 = y1 + lineSize;
    float x1 = map(0, 0, width, borderX, width - borderX);
    float x2 = x1;
    line(x1, y1, x2, y2);

    //Creates the small incremented lines on the vertical graph line
    float current = gap;
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

    //creates the small incremented lines on the horizontalgraph lines
    current = 0;
    while (current <= lineSize) {
      pushMatrix();
      translate(current, 0);
      line(x1, y1, x1, y1-5);
      current += gap;
      popMatrix();
    }
  }
}