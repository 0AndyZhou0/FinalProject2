public class bullet extends entity{
  float angle;
  int speed,damage;
  public bullet(float angle,int speed,int damage,float x,float y,color C){
    this.angle = angle;
    this.speed = speed;
    this.damage = damage;
    this.x = x;
    this.y = y;
    health = 1;
    Color = C;
  }
  float getAngle(){
    return angle;
  }
  int getSpeed(){
    return speed;
  }
  int getDamage(){
    return damage;
  }
  void update(){
    x += speed * cos(angle);
    y += speed * sin(angle);
    for(block[] temp:rooms[0][0].room){
      for(block b:temp){
        if(abs(x-b.x) < 80 && abs(y-b.y) < 80){
          x = 1000;
          y = 1000;
        }
      }
    }
  }
  void display(){
    fill(Color);
    ellipse((int)x,(int)y,5,5);
  }
  
  bullet copy(){
    return new bullet(angle,speed,damage,x,y,Color);
  }
}
