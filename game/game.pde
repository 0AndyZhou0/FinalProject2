player pleb;
ArrayList<enemy> enemies;

void setup(){
  size(800,600);
  enemies = new ArrayList();
  pleb = new player();
  int numEnemies = (int)random(4)+2;
  for(int i = 0;i < numEnemies;i++){
    enemies.add(new enemy(i+240));
  }
}

void draw(){
  background(255);
  pleb.display();
  for(enemy e : enemies){
    if(e.getHealth() <= 0){
      enemies.remove(e);
    }else{
      e.update();
      e.display();
    }
    for(bullet b : e.bullets){
      if(b.getX() < 0 || b.getX() > width || b.getY() < 0 || b.getY() > height){
        e.bullets.remove(b);
      }
      if(get((int)b.getX(),(int)b.getY()) == 0){
        pleb.hit(b);
      }
      b.update();
      b.display();
    }
  }
  if(pleb.getHealth() <= 0){
    println("you lose");
    pleb.health = 100;
    enemies = new ArrayList();
  }
  for(bullet b : pleb.bullets){
    b.update();
    b.display();
  }
  text(frameRate,10,10);
}

void mouseClicked(){
  pleb.mouseShoot(5,5);
}

void keyPressed(){
  if(key == 'w'){
    pleb.moveDown(-10);
  }
  if(key == 'a'){
    pleb.moveRight(-10);
  }
  if(key == 's'){
    pleb.moveDown(10);
  }
  if(key == 'd'){
    pleb.moveRight(10);
  }
}
