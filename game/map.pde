public class map{
  int playerX,playerY;
  char[][] map = {{'#','#','#','R','#','R'},
                  {'#','R','R','R','R','R'},
                  {'#','R','#','S','#','R'},
                  {'#','R','R','R','#','R'},
                  {'#','R','R','#','R','R'},
                  {'#','#','#','#','#','R'}};
  room[][] rooms = new room[6][6];
  public map(){
    for(int r = 0;r < map[0].length;r++){
      for(int c = 0;c < map.length;c++){
        if(map[r][c] == 'P'){
          playerX = c;
          playerY = r;
        }
      }
    }
  }
  void moveUp(){
    if(playerY > 0 && map[playerY-1][playerX] != '#'){
      playerY--;
      if(map[playerY][playerX] == 'R'){
        rooms[playerX][playerY] = new room();
      }
    }
  }
  void moveDown(){
    if(playerY < map.length-1 && map[playerY+1][playerX] != '#'){
      playerY++;
      if(map[playerY][playerX] == 'R'){
        rooms[playerX][playerY] = new room();
      }
    }
  }
  void moveLeft(){
    if(playerX > 0 && map[playerY][playerX-1] != '#'){
      playerX--;
      if(map[playerY][playerX] == 'R'){
        rooms[playerX][playerY] = new room();
      }
    }
  }
  void moveRight(){
    if(playerX < map[0].length-1 && map[playerY][playerX+1] != '#'){
      playerX++;
      if(map[playerY][playerX] == 'R'){
        rooms[playerX][playerY] = new room();
      }
    }
  }
  public void clearedRoom(int r, int c){
    map[r][c] = 'C';
  }
}
