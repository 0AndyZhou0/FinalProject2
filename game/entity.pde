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
}