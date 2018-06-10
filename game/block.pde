class block{
  boolean isWall,isDestructible;
  int x,y;
  public block(boolean wall,boolean destructible){
    isWall = wall;
    isDestructible = destructible;
  }
  
 void update(){
   if(abs(pleb.getX() - x) < 10 && abs(pleb.getY() - y) < 10){
     
   }
 }
}
