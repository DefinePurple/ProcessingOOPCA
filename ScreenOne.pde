class ScreenOne {
  Grid grid;
  Graph graph;
  LaunchButton launch;
  Wave wave;
  Radar radar;
  Submarine submarine;

  ScreenOne() {
    grid = new Grid();
    launch = new LaunchButton();
    graph = new Graph();
    wave = new Wave();
    radar = new Radar();
    submarine = new Submarine();
  }

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

  void keyPress(char ch) {
    wave.modify(ch);
  }

  int mousePress(int screenID) {
    if (launch.click())
      return launch.function;
    else 
    return screenID;
  }
}//end screenOne