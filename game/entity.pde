public abstract class entity{
  int x,y,health;
  ArrayList<bullet> bullets;
  public int getHealth(){
    return health; 
  }
  public int getX(){
    return x; 
  }
  public int getY(){
    return y; 
  }
  public void addHealth(int amount){
    health += amount; 
  }
  
  public void moveDown(int amount){
    y += amount;
  }
  public void moveRight(int amount){
    x += amount;
  }
  
  void shoot(int speed,int damage){
    bullets.add(new bullet(atan((mouseY-y)/(mouseX-x)),speed,damage));
  }
  void hit(bullet b){
    addHealth(-b.getDamage());
    bullets.remove(b);
  }
}