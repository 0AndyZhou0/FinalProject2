import java.util.*;
public abstract class entity{
  int cooldown;
  float x,y;
  int health;
  color Color;
  LinkedList<bullet> bullets;
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
    if(y + amount > 0 && y + amount < height){
      y += amount;
    }
  }
  public void moveRight(double amount){
    if(x + amount > 0 && x + amount < width){
      x += amount;
    }
  }
  
  
  
  void shoot(int speed,int damage){
    float angle = atan2(pleb.getY()-y,pleb.getX()-x);
    bullets.add(new bullet(angle,speed,damage,x,y));
  }
  
  void hit(entity e,bullet b){
    e.addHealth(-b.getDamage());
    bullets.remove(b);
  }
  
  color getColor(){
    return Color;
  }
}