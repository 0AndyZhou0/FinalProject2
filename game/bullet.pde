public class bullet extends entity{
  float angle;
  int speed,damage;
  public bullet(float angle,int speed,int damage,float x,float y){
    this.angle = angle;
    this.speed = speed;
    this.damage = damage;
    this.x = x;
    this.y = y;
    health = 1;
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
  }
  void display(){
    ellipse((int)x,(int)y,5,5);
  }
}