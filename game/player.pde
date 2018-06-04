public class player extends entity{
  public player(){
   x = 400;
   y = 300;
   health = 10;
   bullets = new LinkedList();
   
  }
  
  public void update(){
    for(int i = 0;i < bullets.size();i++){
      bullet b = bullets.get(i);
      if(b.getX() < 0 || b.getX() > width || b.getY() < 0 || b.getY() > height){
        bullets.remove(b);
        i--;
      }else{
        for(int x = 0;x < enemies.size();x++){
          enemy e = enemies.get(x);
          if(get((int)b.getX(),(int)b.getY()) == get((int)e.getX(),(int)e.getY())){
              pleb.hit(e,b);
          }
        }
        b.update();
        b.display();
      }
    }
  }
  
  public void display(){
    fill(0);
    ellipse((int)x,(int)y,20,20);
  }
  
  void mouseShoot(int speed,int damage){
    float angle = atan2(mouseY-y,mouseX-x);
    bullets.add(new bullet(angle,speed,damage,x,y));
  }
}