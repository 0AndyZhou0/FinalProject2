player pleb;
int[][] wallCoor;
room[][] rooms = new room[1][1];

void setup(){
  size(800,600);
  
  rooms[0][0] = new room();
  
  pleb = new player();
}

void draw(){
  background(255);
  for(room[] temp:rooms){
    for(room r:temp){
      r.update();
    }
  }
  
  if(pleb.getHealth() <= 0){
    println("you lose");
    exit();
  }else{
    pleb.update();
    pleb.display();
  }
  text(frameRate,10,10);
  if (rooms[0][0].getEnemies().size() == 0){
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
