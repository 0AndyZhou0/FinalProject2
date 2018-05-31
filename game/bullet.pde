public class bullet{
  int angle,speed,damage;
  public bullet(int angle,int speed,int damage){
    this.angle = angle;
    this.speed = speed;
    this.damage = damage;
  }
  void hit(entity e,int damage){
    e.addHealth(-damage);
  }
}