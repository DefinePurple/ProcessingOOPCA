class ScreenOne {
  Grid grid;
  Graph graph;
  LaunchButton launchButton;
  Wave wave;
  
  ScreenOne() {
    grid = new Grid();
    launchButton = new LaunchButton();
    graph = new Graph();
    wave = new Wave();
  }
  
  void render(){
    grid.render();
    graph.render();
    wave.render();
    wave.update();
    launchButton.update();
  }
  
  

  int click(int screenID){
    if(launchButton.click())
      return launchButton.function;
    else return screenID;
   
  }
  void defaults(){
  textAlign(CENTER,CENTER);
  textSize(20);
  fill(255);
  stroke(255);
}
}//end screenOne