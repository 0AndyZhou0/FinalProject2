player pleb;
int roomNum = 0;
room[] rooms;
map level;
block[] room = new block[58];

void setup(){
  size(800,600);//16+16+11+11
  level = new map();
  pleb = new player();
  rooms = new room[17];
  rooms[0] = new room();
  //rooms[0].enemies = new LinkedList();
  for(int i = 0; i < 58;i++){
    if(i < 16){
      if (i != 6 && i != 7 && i != 8 && i != 9){
        room[i] = new block(true,50*i,0);
      } else {
        room[i] = new block(true,0,0); 
      }
    }else if (i < 28){
      if (i != 20 && i != 21 && i != 22 && i != 23){
        room[i] = new block(true,750,(i%16)*50);//i*50-600);
      } else {
        room[i] = new block(true,0,0);
      }
    } else if (i < 44){
      if (i != 34 && i != 35 && i != 36 && i != 37){
        room[i] = new block(true,750-(i%28)*50,550);
      } else {
        room[i] = new block(true,0,0);
      }
    } else {
      if (i != 48 && i != 49 && i != 50 && i != 51){ 
        room[i] = new block(true,0,550-(i%44)*50);
      } else {
        room[i] = new block(true,0,0);
      }
    }
  }
}

void draw(){
  background(255);
  rooms[roomNum].update();
  if(pleb.getHealth() <= 0){
    println("you lose");
    exit();
  }else{
    pleb.update();
    pleb.display();
  }
  text(frameRate,10,10);
  if (rooms[roomNum].enemies.size() == 0){
    //exit();
  }
}

void mousePressed(){
  pleb.shooting = true;
}

void mouseReleased(){
  pleb.shooting = false;
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
