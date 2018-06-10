class block{
  boolean isWall;
  int x,y;
  public block(boolean wall, int xCoor, int yCoor){
    isWall = wall;
    x = xCoor;
    y = yCoor;
  }
  
 void update(){
   fill(0);
   rect(x,y,50,50);
 }
}
