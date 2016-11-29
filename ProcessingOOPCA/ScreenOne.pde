class ScreenOne {
  //Declaration of objects on screen
  Grid grid;
  Graph graph;
  Wave wave;
  Radar radar;
  Submarine submarine;
  LaunchButton launch;
  
  ScreenOne() {
    //Init objects
    grid = new Grid();
    launch = new LaunchButton();
    graph = new Graph();
    wave = new Wave();
    radar = new Radar();
    submarine = new Submarine();
  }
  
  //Draw and update each object
  void render() {
    grid.render();
    graph.render();
    wave.render();
    wave.update();
    radar.render();
    submarine.render();
    launch.hover();
    launch.render();
  }
  
  //function for key presses to modify wave
  void keyPress(char ch) {
    wave.modify(ch);
  }

  //Checks if buttons are clicked 
  int mousePress(int screenID) {
    if (launch.click())
      return launch.function;
    else 
    return screenID;
  }
}//end screenOne