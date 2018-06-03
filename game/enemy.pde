public class enemy extends entity{
  int cooldown;
  public enemy(color enemyColor){
   x = (int)random(600) + 100;
   y = (int)random(400) + 100;
   health = 1;
   bullets = new LinkedList();
   this.Color = enemyColor;
   cooldown = 40;
  }
  
  color getColor(){
    return Color;
  }
  
  public void update(){
    x += random(20) - 10;
    y += random(20) - 10;
    if(cooldown > 0){
      cooldown--;
    }else{
      shoot(2,1);
      cooldown = 100;
    }
    for(bullet b : bullets){
      if(b.getX() < 0 || b.getX() > width || b.getY() < 0 || b.getY() > height){
        bullets.remove(b);
      }else{
        if(get((int)b.getX(),(int)b.getY()) == get((int)pleb.getX(),(int)pleb.getY())){
          pleb.hit(b);
        }
        b.update();
        b.display();
      }
    }
  }
  
  public void display(){
    fill(Color,0,0);
    rect((int)x,y,20,20);
  }
}
