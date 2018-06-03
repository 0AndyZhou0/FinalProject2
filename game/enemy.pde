public class enemy extends entity{
  int enemyColor;
  public enemy(int enemyColor){
   x = (int)random(600) + 100;
   y = (int)random(400) + 100;
   health = 50000;
   bullets = new ArrayList();
   this.enemyColor = enemyColor;
  }
  
  public void update(){
    print("hi");
  }
  
  public void display(){
    fill(enemyColor,0,0);
    rect((int)x,y,20,20);
  }
}
