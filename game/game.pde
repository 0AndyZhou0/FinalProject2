player pleb;
ArrayList<enemy> enemies;
int[][] wallCoor;

void setup(){
  size(800,600);
  
  enemies = new ArrayList();
  pleb = new player();
  //setupWalls(pleb);
  int numEnemies = (int)random(4)+2;

  for(int i = 0;i < numEnemies;i++){
    enemies.add(new enemy(i+240));
  }
  noCursor();
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
    exit();
  }else{
    pleb.update();
    pleb.display();
  }
  text(frameRate,10,10);
  if (enemies.size() == 0){
    println("you win");
    exit();
  }
}

void mouseClicked(){
  if(pleb.cooldown < 0){
    pleb.mouseShoot(2,2);
    pleb.cooldown = 30;
  }
}

void keyPressed(){
  if(key == 'w'){pleb.up = true;}
  if(key == 'a'){pleb.left = true;}
  if(key == 's'){pleb.down = true;}
  if(key == 'd'){pleb.right = true;}
  if(key == ' '){pleb.special = true;}
}

void keyReleased(){
  if(key == 'w'){pleb.up = false;}
  if(key == 'a'){pleb.left = false;}
  if(key == 's'){pleb.down = false;}
  if(key == 'd'){pleb.right = false;}
  if(key == ' '){pleb.special = false;}
}
