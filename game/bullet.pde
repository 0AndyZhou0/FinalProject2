public class bullet extends entity{
  float angle;
  int speed,damage;
  public bullet(float angle,int speed,int damage){
    this.angle = angle;
    this.speed = speed;
    this.damage = damage;
    x = mouseX;
    y = mouseY;
    health = -1;
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
    ellipse(x,y,5,5);
  }
}