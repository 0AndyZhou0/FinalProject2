public class player extends entity{
  PImage player;
  int mana;
  public player(){
   x = 400;
   y = 300;
   health = 100;
   bullets = new LinkedList();
   cooldown = 40;
   player = loadImage("knight.png");
   mana = 150;
   weapon = 0;
  }
  
  boolean up,left,down,right,special,shooting;
  
  public void update(){
    cooldown--;
    for(int i = 0;i < bullets.size();i++){
      bullet b = bullets.get(i);
      if(b.getX() < 0 || b.getX() > width || b.getY() < 0 || b.getY() > height){
        bullets.remove(b);
        i--;
      }else{
        for(int x = 0;x < rooms[roomNum].enemies.size();x++){
          enemy e = rooms[roomNum].enemies.get(x);
          if(pow((float)b.getX()-(float)e.getX(),2) + pow((float)b.getY()-(float)e.getY(),2) < 400){
              hit(e,b);
          }
        }
        b.update();
        b.display();
      }
    }
    if(up){moveDown(-5);}
    if(left){moveRight(-5);}
    if(down){moveDown(5);}
    if(right){moveRight(5);}
    if(special){special();}
    if(shooting){
      if(cooldown < 0){
        if(weapon == 0){
          mouseShoot(10,2);
          cooldown = 30;
        }
        if(weapon == 1){
          mouseShoot(10,1);
          cooldown = 10;
        }
        if(weapon == 2){
          for(int i = 0;i < 6;i++){
            float angle = atan2(mouseY-y,mouseX-x) + random(radians(20)) - radians(10);
            bullets.add(new bullet(angle,10,1,x,y,0));
          }
          cooldown = 50;
        }
        
        if(weapon == -1){
          for(int i = 0;i < 100;i++){
            float angle = atan2(mouseY-y,mouseX-x) + random(radians(360));
            bullets.add(new bullet(angle,10,10,x,y,0));
          }
          cooldown = 0;
        }
      }
    }
  }
  
  void special(){
    for(bullet b:bullets){
      b.update();
      b.update();
      b.update();
      b.update();
    }
  }
  
  public void display(){
    image(player,x-45,y-45,80,80);
  }
  
  void mouseShoot(int speed,int damage){
    float angle = atan2(mouseY-y,mouseX-x);
    bullets.add(new bullet(angle,speed,damage,x,y,0));
  }
}