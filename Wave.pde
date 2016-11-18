class Wave {
  float[] x; //An array to hold each value on the x axis
  float y; //Value along the y axis
  float nHeight, waveSize; //Determines the width of the wave and thewaveSize of the ellipse
  float border, ySpacing, centerY, centerX; //Determines the border from the left of the screen and the spacing of each ellipse
  float theta, temp, thetaIncrement, dy; //Original angle, incremented angle, starting angle increment, angle increment 
  int amplitude, period; //Increases the 'height' of each wave and 'width' of each wave 

  Wave() {
    border = height * 0.05f; //Distance away from the top of the screen
    nHeight = height * 0.4f; //Determines the height of the wave 
    waveSize = (width * 0.01f) + (height * 0.01f); //Determines thewaveSize of the ellipse    
    centerX = width * 0.95f;
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
    float y2 = border + 8 + ySpacing*x.length;
    line( centerX, y1, centerX, y2);

    strokeWeight(1);
    for (int i = 0; i < x.length; i++) {
      y = border + ySpacing*i;
      ellipse(x[i], y, 16, 16);
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
}//end Wave