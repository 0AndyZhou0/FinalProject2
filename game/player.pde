public class player extends entity{
  PImage player;
  int mana;
  public player(){
   x = 400;
   y = 300;
   health = 10;
   bullets = new LinkedList();
   cooldown = 40;
   player = loadImage("knight.png");
   mana = 150;
   weapon = 1;
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
        for(int x = 0;x < rooms[0][0].enemies.size();x++){
          enemy e = rooms[0][0].enemies.get(x);
          if(pow((float)b.getX()-(float)e.getX(),2) + pow((float)b.getY()-(float)e.getY(),2) < 400){
              pleb.hit(e,b);
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
      if(pleb.cooldown < 0){
        if(pleb.weapon == 0){
          pleb.mouseShoot(10,2);
          pleb.cooldown = 30;
        }
        if(pleb.weapon == 1){
          pleb.mouseShoot(10,1);
          pleb.cooldown = 10;
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
