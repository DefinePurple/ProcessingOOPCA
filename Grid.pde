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
  }
}