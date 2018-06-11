import java.util.*;
public abstract class entity{
  int cooldown;
  float x,y;
  int health;
  color Color;
  double direction = 0;
  LinkedList<bullet> bullets;
  int weapon;
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
      for(block b:room){
        if(abs(x-b.x-25) < 45 && abs(y-b.y-25) < 45){
          y-=amount;
        }
      }
      for(block b:rooms[currentRoom].doors){
        if(abs(x-b.x-25) < 45 && abs(y-b.y-25) < 45){
          y-=amount;
        }
      }
    }else{
      direction*=-1;
    }
  }
  public void moveRight(double amount){
    if(x + amount > 0 && x + amount < width){
      x += amount;
      for(block b:room){
        if(abs(x-b.x-25) < 45 && abs(y-b.y-25) < 45){
          x-=amount;
        }
      }
      for(block b:rooms[currentRoom].doors){
        if(abs(x-b.x-25) < 45 && abs(y-b.y-25) < 45){
          x-=amount;
        }
      }
    }else{
      direction*=-1;
    }
  }
  
  void hit(entity e,bullet b){
    e.addHealth(-b.getDamage());
    bullets.remove(b);
  }
  
  color getColor(){
    return Color;
  }
  
  
  void shoot(int speed,int damage){
    if(weapon == 0 || weapon == 1){
      float angle = atan2(pleb.getY()-y,pleb.getX()-x);
      bullets.add(new bullet(angle,speed,damage,x,y,color(Color,0,0)));
    }
    if(weapon == 2){
      for(int i = 0;i < 6;i++){
        float angle = atan2(pleb.getY()-y,pleb.getX()-x) + random(radians(20)) - radians(10);
        bullets.add(new bullet(angle,10,1,x,y,0));
      }
    }
  }
}
