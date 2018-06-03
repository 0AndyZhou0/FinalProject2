public abstract class entity{
  float x,y;
  int health;
  ArrayList<bullet> bullets;
  public int getHealth(){
    return health; 
  }
  public float getX(){
    return x; 
  }
  public float getY(){
    return y; 
  }
  public void addHealth(int amount){
    health += amount; 
  }
  
  public void moveDown(double amount){
    if(y > 0 && y + 2*amount < height){
      y += amount;
    }
  }
  public void moveRight(double amount){
    if(x > 0 && x + 2*amount < width){
      x += amount;
    }
  }
  
  void mouseShoot(int speed,int damage){
    float angle = atan2(mouseY-y,mouseX-x);
    bullets.add(new bullet(angle,speed,damage,x,y));
  }
  
  void shoot(int speed,int damage){
    float angle = atan2(pleb.getY()-y,pleb.getX()-x);
    bullets.add(new bullet(angle,speed,damage,x,y));
  }
  
  void hit(bullet b){
    addHealth(-b.getDamage());
    bullets.remove(b);
  }
}
