public class Button{
  PVector pos;
  float sizeX, sizeY;
  float c1, c2, c3, c4;
  color colour;
  
  //function for buttons with different side lengths
  public void render(){
    color(colour);
    rect(pos.x, pos.y, sizeX, sizeY, c1, c2, c3, c4); 
  }
  
  public void hover(){
    
  }
  
  
}//end button