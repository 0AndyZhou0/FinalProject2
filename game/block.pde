class block{
  boolean isWall,isDestructible;
  int x,y;
  public block(boolean wall,boolean destructible, int xCoor, int yCoor){
    isWall = wall;
    isDestructible = destructible;
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
