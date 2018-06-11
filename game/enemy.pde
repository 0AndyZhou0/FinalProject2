public class enemy extends entity{
  PImage Eminem;
  double distance;
  float angle;
  
  public enemy(color enemyColor){
   x = (int)random(height/2) + 100;
   y = (int)random(width/2) + 100;
   health = 6;
   bullets = new LinkedList();
   Color = enemyColor;
   cooldown = 40;
   direction = 3;
   weapon = (int)random(2) + 1;
   if (weapon == 0){
     Eminem = loadImage("MiniPistolKnight.png");
   } else if (weapon == 1){
     Eminem = loadImage("MiniMinigunKnight.png");
   } else if (weapon == 2){
     Eminem = loadImage("BadKnightMini.png");
   } 
  }
  
  color getColor(){
    return Color;
  }
  
  public void update(){
    noStroke();
    if(cooldown > 0){
      cooldown--;
    }else{
      if(weapon == 0){
        shoot(10,2);
        cooldown = 100;
      }
      if(weapon == 1){
        shoot(10,1);
        cooldown = 20;
      }
      if(weapon == 2){
        shoot(10,1);
        cooldown = 50;
      }
    }
    for(int i = 0;i < bullets.size();i++){
      bullet b = bullets.get(i);
      if(b.getX() < 0 || b.getX() > width || b.getY() < 0 || b.getY() > height){
        bullets.remove(b);
        i--;
      }else{
        if(pow((float)b.getX()-(float)pleb.getX(),2) + pow((float)b.getY()-(float)pleb.getY(),2) < 400){
          hit(pleb,b);
        }
        b.update();
        b.display();
      }
    }
    move();
  }
  
  public void display(){
    image(Eminem,x-45,y-45,80,80);
  }
  
  public void move(){
    distance = dist(x,y,pleb.getX(),pleb.getY());
    angle = atan2(pleb.getY()-y,pleb.getX()-x);
    if (distance > 350){
      direction = abs((float)direction);
    } else if (distance < 150){
      direction = -1*abs((float)direction);
    }
    moveRight(direction*cos(angle));
    moveDown(direction*sin(angle));
  }
}
