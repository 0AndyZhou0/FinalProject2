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
    y += amount;
  }
  public void moveRight(double amount){
    x += amount;
  }
  
  void shoot(int speed,int damage){
    float angle = atan2((mouseY-y),(mouseX-x));
    println(angle);
    
    bullets.add(new bullet(angle,speed,damage));
  }
  void hit(bullet b){
    addHealth(-b.getDamage());
    bullets.remove(b);
  }
}