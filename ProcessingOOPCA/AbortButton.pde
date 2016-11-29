//Abort button will return the user from screen three to screen one 
private class AbortButton extends Button{
  AbortButton(){
    function = 1; //What the button will return when clicked 

    //Height and Width of button
    sizeY = height * 0.1f;
    sizeX = width * 0.15f;
    
    //Position of button
    pos = new PVector(width * 0.5f, height * 0.8f);
    pos.x -= (sizeX * 0.5f);//centers it on the x axis
    pos.y -= (sizeY * 0.5f);//centers it on the y axis

    //Colours of button normally and when mouse is hovering over it
    colour = color(235, 30, 10);
    hover = color(200, 40, 25);

    //Corners of the buttons to be rounded
    c1 = 10;
    c2 = 10;
    c3 = 10;
    c4 = 10;

    //Text appearing on button and its position
    text = "ABORT"; 
    textSize = (sizeX + sizeY) * 0.09f;
  }
}