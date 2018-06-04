player pleb;
ArrayList<enemy> enemies;

void setup(){
  size(800,600);
  enemies = new ArrayList();
  pleb = new player();
  int numEnemies = (int)random(3)+1;
  for(int i = 0;i < numEnemies;i++){
    enemies.add(new enemy(i+240));
  }
}

void draw(){
  background(255);
  
  for(int i = 0;i < enemies.size();i++){
    enemy e = enemies.get(i);
    if(e.getHealth() <= 0){
      enemies.remove(e);
      i--;
    }else{
      e.update();
      e.display();
    }
  }
  
  if(pleb.getHealth() <= 0){
    println("you lose");
    pleb.health = 10;
    enemies = new ArrayList();
  }else{
    pleb.update();
    pleb.display();
  }
  text(frameRate,10,10);
}

void mouseClicked(){
  if(pleb.cooldown < 0){
    pleb.mouseShoot(2,2);
    pleb.cooldown = 40;
  }
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