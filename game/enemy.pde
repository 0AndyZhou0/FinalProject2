public class enemy extends entity{
  public enemy(){
   x = (int)random(600) + 100;
   y = (int)random(400) + 100;
   health = 50000;
   bullets = new ArrayList();
  }
  
  public void update(){
    move();
    //print("hi");
  }
  
  public void display(){
    fill(255,0,0);
    rect(x,y,20,20);
  }
  
  public void move(){
    x+= random(3) - 2;
    y+= random(3) - 2;
  }
  
}