public class player extends entity{
  public player(){
   x = 400;
   y = 300;
   health = 100;
   bullets = new LinkedList();
   cooldown = 40;
  }
  
  boolean up,left,down,right;
  
  public void update(){
    cooldown--;
    for(int i = 0;i < bullets.size();i++){
      bullet b = bullets.get(i);
      if(b.getX() < 0 || b.getX() > width || b.getY() < 0 || b.getY() > height){
        bullets.remove(b);
        i--;
      }else{
        for(int x = 0;x < enemies.size();x++){
          enemy e = enemies.get(x);
          if(pow((float)b.getX()-(float)e.getX(),2) + pow((float)b.getY()-(float)e.getY(),2) < 400){
              pleb.hit(e,b);
          }
        }
        b.update();
        b.display();
      }
    }
    if(up){y-=5;}
    if(left){x-=5;}
    if(down){y+=5;}
    if(right){x+=5;}
  }
  
  public void display(){
    fill(0);
    ellipse((int)x,(int)y,40,40);
  }
  
  void mouseShoot(int speed,int damage){
    float angle = atan2(mouseY-y,mouseX-x);
    bullets.add(new bullet(angle,speed,damage,x,y,0));
  }
}
