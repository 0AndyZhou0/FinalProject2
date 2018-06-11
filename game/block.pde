class block{
  PImage WallE;
  boolean isWall;
  int x,y;
  public block(boolean wall, int xCoor, int yCoor){
    isWall = wall;
    x = xCoor;
    y = yCoor;
    WallE = loadImage("PixelWall.png");
  }
  
  boolean isWall(){
    return isWall;
  }
  
 void update(){
   image(WallE,x,y,50,50); 
   //fill(0);
   //rect(x,y,50,50);
   //display();
 }
 
 void display(){
 }
}
