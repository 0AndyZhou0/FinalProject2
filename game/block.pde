class block{
  boolean isWall,isDestructible;
  int x,y;
  public block(boolean wall,boolean destructible){
    isWall = wall;
    isDestructible = destructible;
    x = 500;
    y = 500;
  }
  
 void update(){
   //if(abs(pleb.getX() - x) < 10 && abs(pleb.getY() - y) < 10){
   //  x++;
   //}
   fill(0);
   rect(500,500,50,50);
 }
}
