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
  crosshair();
}
/*
void setupWalls(entity being){
  int a = being.getX();
  int b = being.getY();
  int tall = 20;
  int wide = 20;
  int squareSide = 25;
  a+= squareSide;
  b+= squareSide;
  for (int i = 0; i < squareSide * 4; i++){
     if (i < squareSide){
       a += 20;
     } else if(i < 2 * squareSide){
       b -= 20;
     } else if(i < 3 * squareSide){
       a -= 20;
     } else if(i < 4 * squareSide){
       b += 20;
     }
     fill(0);
     rect(a,b,wide,tall);
     
  }
  
}
*/
void crosshair(){
  ellipse(mouseX,mouseY,10,10);
}

void mouseClicked(){
  if(pleb.cooldown < 0){
    pleb.mouseShoot(2,2);
    pleb.cooldown = 30;
  }
}

void keyPressed(){
  if(key == 'w'){
    if(pleb.y > 25){
      pleb.moveDown(-15);
    }
  }
  if(key == 'a'){
    pleb.moveRight(-15);
  }
  if(key == 's'){
    pleb.moveDown(15);
  }
  if(key == 'd'){
    pleb.moveRight(15);
  }
  if(key == ' '){
    pleb.update();
  }
}