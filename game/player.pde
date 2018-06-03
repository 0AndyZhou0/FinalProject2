public class player extends entity{
  public player(){
   x = 400;
   y = 300;
   health = 10;
   bullets = new LinkedList();
  }
  
  public void update(){
    for(bullet b : bullets){
      if(b.getX() < 0 || b.getX() > width || b.getY() < 0 || b.getY() > height){
        bullets.remove(b);
      }else{
        for(enemy e: enemies){
          if(get((int)b.getX(),(int)b.getY()) == get((int)e.getX(),(int)e.getY())){
              e.hit(b);
          }
        }
        b.update();
        b.display();
      }
    }
  }
  
  public void display(){
    fill(0);
    rect(x,y,20,20);
  }
}
