class block{
  boolean isWall;
  int x,y;
  public block(boolean wall, int xCoor, int yCoor){
    isWall = wall;
    x = xCoor;
    y = yCoor;
  }
  
 void update(){
   //if(abs(pleb.getX() - x) < 10 && abs(pleb.getY() - y) < 10){
   //  x++;
   //}
   fill(0);
   rect(x,y,50,50);
 }
}
