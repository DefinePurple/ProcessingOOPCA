/*
  Uses a recursively drawn fractal crack to draw a 'Crack' on the screen
*/

public class Crack{
  private void crack(float x1, float y1, float angle,int cur) {
    //If theres no more branches, stop drawing
    if (cur == 0) 
      return;
    
    //gets the new x and y to draw too
    float x2 = x1 + cos(radians(angle)) * (cur + 10) * 22;
    float y2 = y1 + sin(radians(angle)) * (cur + 10) * 22;
    line(x1, y1, x2, y2);
    
    
    //Calls itself twice more for each branch
    crack(x2, y2, angle + 20,cur - 1);
    crack(x2, y2, angle - 20,cur - 1);
  }

  public void render() {
    //Starts the crack
    crack(width + (width * 0.5f),height + (height * 0.5f), -135, 11);
  }
}