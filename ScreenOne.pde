class ScreenOne {
  Grid grid;
  Graph graph;
  LaunchButton launchButton;
  Wave wave;
  Radar radar;
  Submarine submarine;

  ScreenOne() {
    grid = new Grid();
    launchButton = new LaunchButton();
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
    launchButton.update();
  }

  void keyPress(char ch) {
      wave.modify(ch);
  }

  int click(int screenID) {
    if (launchButton.click())
      return launchButton.function;
    else return screenID;
  }
  void defaults() {
    textAlign(CENTER, CENTER);
    textSize(20);
    fill(255);
    stroke(255);
  }
}//end screenOne