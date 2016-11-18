class ScreenOne {
  Grid grid;
  LaunchButton launchButton;
  
  
  ScreenOne() {
    grid = new Grid();
    launchButton = new LaunchButton();
  }
  
  void render(){
    grid.render();
    launchButton.update();
  }
  
  
  
}//end screenOne