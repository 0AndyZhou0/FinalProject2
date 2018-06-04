player pleb;
ArrayList<enemy> enemies;

void setup(){
  size(800,600);
  enemies = new ArrayList();
  pleb = new player();
  //setupWalls(pleb);
  int numEnemies = (int)random(4)+2;
  for(int i = 0;i < numEnemies;i++){
    enemies.add(new enemy());
  }
}

void draw(){
  background(255);
  pleb.display();
  for(enemy e : enemies){
    if(e.getHealth() <= 0){
      enemies.remove(e);
    }else{
      e.display();
      e.update();
    }
  }
  //if(pleb.bullets.size() > 0){
    for(bullet b : pleb.bullets){
      b.update();
      b.display();
    }
  //}
  text(frameRate,10,10);
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
  pleb.shoot(5,5);
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