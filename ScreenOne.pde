class ScreenOne {

  ScreenOne() {
  }

  void renderGrid() {
    stroke(60);
    float gap = height * 0.1f;
    float current = 0;


    float x1 = 0;
    float x2 = width;
    while (current <= height) { 
      pushMatrix();
      line(x1, -1, x2, -1);
      translate(0, current);
      popMatrix();
      current += gap;
    }
  }
}//end screenOne