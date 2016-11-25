//The white box on screen two which holds the users code
class Box {
  PVector box;//Position of box
  float sizeX, sizeY;//Width and height of box
  Code code;//Class for getting and checking the users code

  CloseLaunchCode close;//Button to close screen
  SubmitLaunchCode submit;//Button to submit launch code

  Box() {
    sizeX = width * 0.75f;//Init width of box
    sizeY = height * 0.4f;//Init height of box
    
    //Positions button on point provided
    box = new PVector(width * 0.5, height * 0.5f);
    box.x -= sizeX * 0.5f;
    box.y -= sizeY * 0.5f;
    
    //Init classes
    code = new Code();
    close = new CloseLaunchCode(sizeX, sizeY, box);
    submit = new SubmitLaunchCode(sizeX, sizeY, box);
  }

  void render() {
    //Set colours, sizes
    textSize(50);
    fill(255);
    stroke(0);
    //draw the background box
    rect(box.x, box.y, sizeX, sizeY, 10);
    fill(0);
    //places text on screen
    text("Launch Code", box.x + sizeX * 0.5f, box.y + sizeY * 0.1f);

    //The 4 little gray boxes which will 'hold' the users code as they type it
    float x, y, size;
    fill(170);
    noStroke();
    y =  box.y + sizeY * 0.5f - sizeY / 6; //gets the Y position 
    size = sizeX / 10;// gets size of box in accordance with the background
    for (int i = 0; i < 4; i++) {
      //Increments the x position 
      x = box.x + /**/ (sizeX/4)*i /**/ + sizeX/8 - sizeX*0.05f;
      rect(x, y, size, size, 20);
    }

    fill(100);
    //Highlights the current box in use
    x = box.x + ((sizeX / 4) * (code.pos % 4)) + sizeX / 8 - sizeX * 0.05f;
    rect(x, y, size, size, 20);
    
    //Renders the code
    code.render(box, sizeX, sizeY);
  }
}