player pleb;
int bigX, bigY;
int roomNum = 0;
int currentRoom = 0;
boolean map;
room[] rooms;
map level;
block[] room = new block[58];
char[][] world = {{'#','#','#','R','#','R'},
                  {'#','R','R','R','R','R'},
                  {'#','R','#','R','#','R'},
                  {'#','R','R','V','#','R'},
                  {'#','R','R','#','R','R'},
                  {'#','#','#','#','#','R'}};
void setup(){
  size(800,600);//16+16+11+11
  bigX = 3;
  bigY = 3;
  level = new map();
  pleb = new player();
  int temp = 0;
  for(int r = 0;r < level.map[0].length;r++){
    for(int c = 0;c < level.map.length;c++){
      if(level.map[r][c] != '#'){
        temp++;
      }
    }
  }
  rooms = new room[temp];
  rooms[0] = new room();
  rooms[0].enemies = new LinkedList();
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
  for(block b:room){
    b.update();
  }
  rooms[currentRoom].update();
  if(pleb.getHealth() <= 0){
    println("you lose");
    exit();
  }else{
    pleb.update();
    pleb.display();
  }
  if(roomNum == rooms.length - 1 && rooms[rooms.length - 1].enemies.size() == 0){
    println("you did it");
    exit();
  }
  text(frameRate,10,10);
  if (rooms[roomNum].enemies.size() == 0){
    if(pleb.x < 50){
      level.moveLeft();
      bigX-=1;
    }
    if(pleb.x > 750){
      level.moveRight();
      bigX+=1;
    }
    if(pleb.y < 50){
      level.moveUp();
      bigY-=1;
    }
    if(pleb.y > 550){
      level.moveDown();
      bigY+=1;
    }
  }
  world[bigY][bigX] = 'V';
  if(map){
    fill(100);
    rect(690,490,100,100);
    for (int i = 0; i < world.length; i++){
      for (int j = 0; j < world[0].length; j++){
        if (world[i][j] == 'R'){
         fill(255);
         rect(700 + j*15, 500 + i*15, 10, 10);
        } else if (world[i][j] == 'V'){        
         fill(0);
         rect(700 + j*15, 500 + i*15, 10, 10);
        }
      }
    }
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
  if(key == 'q'){
    if(pleb.weapon > 0){
      pleb.weapon--;
    }
  }
  if(key == 'e'){
    if(pleb.weapon < 2){
      pleb.weapon++;
    }
  }
  if(key == 'g'){
    pleb.weapon = -1;
  }
  if(key == 'm'){map = true;}
}

void keyReleased(){
  if(key == 'w'){pleb.up = false;}
  if(key == 'a'){pleb.left = false;}
  if(key == 's'){pleb.down = false;}
  if(key == 'd'){pleb.right = false;}
  if(key == ' '){pleb.special = false;}
  if(key == 'm'){map = false;}
}