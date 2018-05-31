public class player extends entity{
  public player(){
   x = 400;
   y = 300;
   health = 1;
  }
  
  public void update(){
    print("hi");
  }
  
  public void display(){
    fill(0);
    rect(x,y,20,20);
  }
}