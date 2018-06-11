public class map{
  int playerX,playerY;
  char[][] map = {{'#','#','#','R','#','R'},
                  {'#','R','R','R','R','R'},
                  {'#','R','#','R','#','R'},
                  {'#','R','R',(char)0,'#','R'},
                  {'#','R','R','#','R','R'},
                  {'#','#','#','#','#','R'}};
  public map(){
    playerX = 3;
    playerY = 3;
  }
  void moveUp(){
    if(playerY > 0 && map[playerY-1][playerX] != '#'){
      if(map[--playerY][playerX] == 'R'){
        rooms[++roomNum] = new room();
        map[playerY][playerX] = (char)roomNum;
        currentRoom = roomNum;
      }else{
        currentRoom = (int)map[playerY][playerX];
      }
      pleb.x = 400;
      pleb.y = 520;
      pleb.bullets = new LinkedList();
    }
  }
  void moveDown(){
    if(playerY < map.length-1 && map[playerY+1][playerX] != '#'){
      if(map[++playerY][playerX] == 'R'){
        rooms[++roomNum] = new room();
        map[playerY][playerX] = (char)roomNum;
        currentRoom = roomNum;
      }else{
        currentRoom = (int)map[playerY][playerX];
      }
      pleb.x = 400;
      pleb.y = 80;
      pleb.bullets = new LinkedList();
    }
  }
  void moveLeft(){
    if(playerX > 0 && map[playerY][playerX-1] != '#'){
      if(map[playerY][--playerX] == 'R'){
        rooms[++roomNum] = new room();
        map[playerY][playerX] = (char)roomNum;
        currentRoom = roomNum;
      }else{
        currentRoom = (int)map[playerY][playerX];
      }
      pleb.x = 720;
      pleb.y = 300;
      pleb.bullets = new LinkedList();
    }
  }
  void moveRight(){
    if(playerX < map[0].length-1 && map[playerY][playerX+1] != '#'){
      if(map[playerY][++playerX] == 'R'){
        rooms[++roomNum] = new room();
        map[playerY][playerX] = (char)roomNum;
        currentRoom = roomNum;
      }else{
        currentRoom = (int)map[playerY][playerX];
      }
      pleb.x = 80;
      pleb.y = 300;
      pleb.bullets = new LinkedList();
    }
  }
}
