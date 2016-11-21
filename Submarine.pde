//Draw a submarine make it have red zones

private class Submarine {
  float sizeX, sizeY;

  Submarine() {
    sizeY = height * 0.05f;
    sizeX = width * 0.05f;
  }
  
  void render() {
    noStroke();
    fill(150);

    //Nose
    ellipse(14 * sizeX, 7 * sizeY, 4 * sizeX, 4 * sizeY);

    //Tail
    triangle(4 * sizeX, 4 * sizeY, 4 * sizeX, 10 * sizeY, 5 * sizeX, 7 * sizeY);
    triangle(2.5f * sizeX, 6 * sizeY, 2.5f * sizeX, 8 * sizeY, 2.75f * sizeX, 7 * sizeY);
    rect(3 * sizeX+1, 4 * sizeY, 1 * sizeX, 6 * sizeY);
    triangle(6 * sizeX +1, 5 * sizeY, 6 * sizeX +1, 9 * sizeY, 2 * sizeX, 7 * sizeY);

    //Top shape
    triangle(10 * sizeX + 1, 3 * sizeY, 10 * sizeX +1, 5 * sizeY, 9.5f * sizeX, 5 * sizeY); 
    rect(10 * sizeX, 3 * sizeY, 2 * sizeX, 2 * sizeY);

    //Body
    rect(6 * sizeX, 5 * sizeY, 8 * sizeX, 4 * sizeY);
    if (second()%2 == 1) {
      fill(0);
      rect(7 * sizeX - 1, 5 * sizeY, 6 * sizeX+2, 4 * sizeY);
      fill(205, 250, 40);
      rect(7 * sizeX, 5 * sizeY, 6 * sizeX, 4 * sizeY);
    }
  }
}