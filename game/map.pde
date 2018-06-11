public class map{
  int playerX,playerY;
  char[][] map = {{'#','#','#','R','#','R'},
                  {'#','R','R','R','R','R'},
                  {'#','R','#','R','#','R'},
                  {'#','R','R','S','#','R'},
                  {'#','R','R','#','R','R'},
                  {'#','#','#','#','#','R'}};
  public map(){
    for(int r = 0;r < map[0].length;r++){
      playerX = 4;
      playerY = 4;
    }
  }
  void moveUp(){
    if(playerY > 0 && map[playerY-1][playerX] != '#'){
      map[playerY][playerX] = 'C';
      playerY--;
      if(map[playerY][playerX] == 'R'){
        rooms[++roomNum] = new room();
      }
    }
  }
  void moveDown(){
    if(playerY < map.length-1 && map[playerY+1][playerX] != '#'){
      map[playerY][playerX] = 'C';
      playerY++;
      if(map[playerY][playerX] == 'R'){
        rooms[++roomNum] = new room();
      }
    }
  }
  void moveLeft(){
    if(playerX > 0 && map[playerY][playerX-1] != '#'){
      map[playerY][playerX] = 'C';
      playerX--;
      if(map[playerY][playerX] == 'R'){
        rooms[++roomNum] = new room();
      }
      pleb.x = 750;
      pleb.y = 300;
    }
  }
  void moveRight(){
    if(playerX < map[0].length-1 && map[playerY][playerX+1] != '#'){
      map[playerY][playerX] = 'C';
      playerX++;
      if(map[playerY][playerX] == 'R'){
        rooms[++roomNum] = new room();
      }
    }
  }
}
