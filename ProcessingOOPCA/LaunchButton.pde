//Moves user from screen one to screen two
private class LaunchButton extends Button {
  LaunchButton() {
    //What the button will return when clicked 
    function = 2;

    //Height and Width of button
    sizeY = height * 0.1f;
    sizeX = width * 0.2f;

    //Position of button
    pos = new PVector(width * 0.4f, height * 0.75f);
    pos.x -= (sizeX * 0.5f);//centers it on the x axis
    pos.y -= (sizeY * 0.5f);//centers it on the y axis

    //Colours of button normally and when mouse is hovering over it
    hover = color(150);
    colour = color(90);

    //Corners of the buttons to be rounded
    c1 = 10;
    c2 = 10;
    c3 = 10;
    c4 = 10;

    //Text appearing on button and its position
    text = "Launch Nuke";
    textSize = (sizeX + sizeY) * 0.09f;
  }
}