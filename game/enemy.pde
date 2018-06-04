public class enemy extends entity{
  int cooldown;
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
    x += random(20) - 10;
    y += random(20) - 10;
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
        if(b.getX() == pleb.getX() && b.getY() == pleb.getY()){
          hit(pleb,b);
        }
        b.update();
        b.display();
      }
    }
    move();
  }
  
  public void display(){
    fill(Color,0,0);
    ellipse((int)x,(int)y,20,20);
  }
  
  public void move(){
    x+= random(3) - 2;
    y+= random(3) - 2;
  }
  
}