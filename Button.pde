public class Button {
  PVector pos; //position of the button
  float sizeX, sizeY; //Width and height of the button
  float c1, c2, c3, c4; //Rounding of corners of the button
  color c, colour, hover; //colour of the button when its hovered over and when it is not
  String text;
  float textSize;
  int function;

  //function for buttons with different side lengths
  public void render() {
    fill(c);
    noStroke();
    rect(pos.x, pos.y, sizeX, sizeY, c1, c2, c3, c4);

    fill(0);
    textSize(textSize);
    text(text, pos.x + (sizeX  * 0.5f), pos.y + (sizeY * 0.5f));
  }

  public void hover() {
    if (mouseX >= pos.x && mouseX <= pos.x + sizeX && mouseY >= pos.y && mouseY <= pos.y + sizeY)
      c = color(hover);
    else
      c = color(colour);
  }

  public boolean click() {
    if (mouseX >= pos.x && mouseX <= pos.x + sizeX && mouseY >= pos.y && mouseY <= pos.y + sizeY)
      return true;
    else
      return false;
  }
}//end button