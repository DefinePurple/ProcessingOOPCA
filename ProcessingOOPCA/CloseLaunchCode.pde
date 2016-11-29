//Returns the user to screen one from screen two
class CloseLaunchCode extends Button {
  CloseLaunchCode(float sx, float sy, PVector box) {
    function = 1;//What the button will return when clicked 

    //Height and Width of button
    sizeY = sy * 0.1f;
    sizeX = sx * 0.1f;
    
    //Position of button
    pos = new PVector(box.x + (sizeX * 0.5f), box.y + (sizeY * 0.5f));
    pos.x -= (sizeX * 0.5f);//centers it on the x axis
    pos.y -= (sizeY * 0.5f);//centers it on the y axis
    pos.y += 0.5f;

    //Colours of button normally and when mouse is hovering over it
    hover = color(150);
    colour = color(205);
    
    //Corners of the buttons to be rounded
    c1 = 10;
    c2 = 0;
    c3 = 30;
    c4 = 0;
    
    //Text appearing on button and its position
    text = "X";
    textSize = (sizeX + sizeY) * 0.09f;
  } 
}