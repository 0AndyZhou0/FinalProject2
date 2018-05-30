public abstract class entity{
  int x,y,health;
  public int getHealth(){
    return health; 
  }
  public int getX(){
    return x; 
  }
  public int getY(){
    return y; 
  }
  public void gainHealth(int amount){
    health += amount; 
  }
  
  public void moveDown(int amount){
    y += amount;
  }
  public void moveRight(int amount){
    x += amount;
  }
}