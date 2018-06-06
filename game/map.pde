public class map{
  char[][] level;
  public map(){
    level = {{'#','#','#','R','#','R'},{'#','R','R','R','R','R'},{'#','R','#','R','#','R'},{'#','R','#','#','#','R'},{'#','R','R','#','R','R'},{'#','#','R','#','#','R'}};
    /*
    for (int r = 0; r < level.length(); r++){
     for (int c = 0; c < level[0].length(); c++){
      if (level[r][c] == 'R'){
        
      }
     }
    }
    */
     
  }
  public void clearedRoom(int r, int c){
    level[r][c] = 'C';
  }
}