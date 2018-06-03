public class enemy extends entity{
  int enemyColor;
  int cooldown;
  public enemy(int enemyColor){
   x = (int)random(600) + 100;
   y = (int)random(400) + 100;
   health = 50000;
   bullets = new ArrayList();
   this.enemyColor = enemyColor;
   cooldown = 40;
  }
  
  int getColor(){
    return enemyColor;
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
  }
  
  public void display(){
    fill(enemyColor,0,0);
    rect((int)x,y,20,20);
  }
}
