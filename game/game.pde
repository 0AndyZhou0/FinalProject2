player pleb;
ArrayList<enemy> enemies;

void setup(){
  size(800,600);
  enemies = new ArrayList();
  pleb = new player();
  int numEnemies = (int)random(4)+2;
  for(int i = 0;i < numEnemies;i++){
    enemies.add(new enemy());
  }
}

void draw(){
  background(255);
  pleb.display();
  for(enemy i : enemies){
    i.display();
  }
  text(frameRate,10,10);
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