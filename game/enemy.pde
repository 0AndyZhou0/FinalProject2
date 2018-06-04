public class enemy extends entity{
  public enemy(color enemyColor){
   x = (int)random(height/2) + 100;
   y = (int)random(width/2) + 100;
   health = 1;
   bullets = new LinkedList();
   this.Color = enemyColor;
   cooldown = 40;
  }
  
  color getColor(){
    return Color;
  }
  
  public void update(){
    noStroke();
    moveRight((double)random(20) - 10);
    moveDown((double)random(20) - 10);
    if(cooldown > 0){
      cooldown--;
    }else{
      shoot(2,1);
      cooldown = 100;
    }
    for(int i = 0;i < bullets.size();i++){
      bullet b = bullets.get(i);
      if(b.getX() < 0 || b.getX() > width || b.getY() < 0 || b.getY() > height){
        bullets.remove(b);
        i--;
      }else{
        if(abs((int)b.getX() - (int)pleb.getX()) < 10 && abs((int)b.getY() - (int)pleb.getY()) < 10){
          hit(pleb,b);
        }
        b.update();
        b.display();
      }
    }
  }
  
  public void display(){
    fill(Color,0,0);
    ellipse((int)x,(int)y,20,20);
  }
}