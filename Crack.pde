public class Crack{
  float angle;

  private void drawTree(float x1, float y1, float theta,int depth) {
    angle = theta;
    if (depth == 0) 
      return;

    float x2 = x1 + cos(radians(theta)) * (depth + 10) * 22;
    float y2 = y1 + sin(radians(theta)) * (depth + 10)* 22;
    line(x1, y1, x2, y2);

    drawTree(x2, y2, theta + 20,depth - 1);
    drawTree(x2, y2, theta - 20,depth - 1);
  }

  public void render() {
    drawTree(width + (width * 0.5f),height + (height * 0.5f), -135, 11);
  }
}