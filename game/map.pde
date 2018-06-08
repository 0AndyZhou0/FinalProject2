public class map{
  int playerX,playerY;
  char[][] map = {{'#','#','#','R','#','R'},
                  {'#','R','R','R','R','R'},
                  {'#','R','#','P','#','R'},
                  {'#','R','R','R','#','R'},
                  {'#','R','R','#','R','R'},
                  {'#','#','#','#','#','R'}};
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
      map[playerY][playerX] = 'P';
    }
  }
  void moveDown(){
    if(playerY < map.length-1 && map[playerY+1][playerX] != '#'){
      playerY++;
      map[playerY][playerX] = 'P';
    }
  }
  void moveLeft(){
    if(playerX > 0 && map[playerY][playerX-1] != '#'){
      playerX--;
      map[playerY][playerX] = 'P';
    }
  }
  void moveRight(){
    if(playerX < map[0].length-1 && map[playerY][playerX+1] != '#'){
      playerX++;
      map[playerY][playerX] = 'P';
    }
  }
  public void clearedRoom(int r, int c){
    map[r][c] = 'C';
  }
}