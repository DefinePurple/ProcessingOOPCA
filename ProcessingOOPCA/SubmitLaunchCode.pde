//Button to submit the launch code the user has entered on screen two
private class SubmitLaunchCode extends Button {
  SubmitLaunchCode(float sx, float sy, PVector box) {
    function = 3;//What the button will return when clicked 
    
    //Height and Width of button
    sizeY = sy * 0.15f;
    sizeX = sx * 0.25f;
    
    //Position of button
    pos = new PVector(box.x + (sx * 0.5f), box.y + sy - sizeY);
    pos.x -= (sizeX * 0.5f);//centers it on the y axis
    pos.y -= (sizeY * 0.5f);//centers it on the y axis
    pos.y += 0.5f; //Makes button flush with background

    //Colours of button normally and when mouse is hovering over it
    hover = color(150);
    colour = color(205);
    
    //Corners of the buttons to be rounded
    c1 = 10;
    c2 = 10;
    c3 = 10;
    c4 = 10;
    
    //Text appearing on button and its position
    text = "Submit";
    textSize = (sizeX + sizeY) * 0.09f;
  } 
}