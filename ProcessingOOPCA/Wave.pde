private class Wave {
  float[] x; //An array to hold each value on the x axis
  float y; //Value along the y axis
  float nHeight, waveSize; //Determines the width of the wave and thewaveSize of the ellipse
  float border, ySpacing, centerX; //Determines the border from the left of the screen and the spacing of each ellipse
  float theta, temp, thetaIncrement, dy; //Original angle, incremented angle, starting angle increment, angle increment 
  int amplitude, period; //Increases the 'height' of each wave and 'width' of each wave 

  Wave() {
    border = height * 0.05f; //Distance away from the top of the screen
    nHeight = height * 0.5f; //Determines the height of the wave 
    waveSize = (width * 0.01f) + (height * 0.01f); //Determines the size of the ellipses    
    centerX = width * 0.9f;
    thetaIncrement = 0.1f; //Determines how much to increment theta by
    period = 200; //Determines the period of the sine wave
    amplitude = 40; //Determines the amplitude of the sine wave
    ySpacing = waveSize/10; //Determines the spacing away from the previous elipse
    dy = (TWO_PI / period) * ySpacing; //how much to increment 'theta' by
    x = new float[(int) nHeight / (int) ySpacing]; //the y value of the  centerY of each ellipse
  }

  void render() {
    noFill();
    textSize(20);
    strokeWeight(3);
    stroke(255);

    //Line at  centerY of wave
    float y1 = border - 10 + ySpacing;
    float y2 = y1 + nHeight;
    line( centerX, y1, centerX, y2);

    strokeWeight(1);
    for (int i = 0; i < x.length; i++) {
      y = border + ySpacing*i;
      if(y < y2)
        ellipse(x[i], y, waveSize, waveSize);
    }
  }

  //  Calculates each point on the wave 
  void update() {
    //Increment the starting angle
    theta += thetaIncrement;
    //Without this temp the wave goes incredibly fast ('theta') 
    temp = theta;
    for (int i = 0; i < x.length; i++) {
      x[i] =  centerX + amplitude*sin(temp);
      temp += dy; //increment 'theta'
    }
  }

  //  Accepts user input and 
  void modify(char ch) {
    if ((ch == 'W' || ch =='w') && period < 300)
      period += 10;
    else if ((ch == 'Q' || ch == 'q') && period > 100)
      period -= 10;
    else if ((ch == 'S' || ch == 's') && amplitude < 60)
      amplitude += 5;
    else if ((ch == 'A' || ch == 'a') && amplitude > 20) 
      amplitude -= 5;

    dy = (TWO_PI / period) * ySpacing;
  }
}//end Wave