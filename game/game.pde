player pleb;
LinkedList<enemy> enemies;

void setup(){
  size(800,600);
  enemies = new LinkedList();
  pleb = new player();
  int numEnemies = (int)random(3)+1;
  for(int i = 0;i < numEnemies;i++){
    //enemies.add(new enemy(i+240));
  }
}

void draw(){
  background(255);
  
  for(enemy e : enemies){
    if(e.getHealth() <= 0){
      enemies.remove(e);
    }else{
      e.update();
      e.display();
    }
  }
  
  if(pleb.getHealth() <= 0){
    println("you lose");
    pleb.health = 100;
    enemies = new LinkedList();
  }else{
    pleb.update();
    pleb.display();
  }
  text(frameRate,10,10);
}

void mouseClicked(){
  pleb.mouseShoot(2,2);
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
