class room{
  LinkedList<enemy> enemies;
  //24x18 chunks sound decent
  block[][] room = new block[18][24];
  void room(){
    enemies = new LinkedList();
    for(int r = 0;r < 18;r++){
      for(int c = 0;c < 24;c++){
        room[r][c] = new block(true,false);
      }
    }
    int numEnemies = (int)random(4)+2;
    for(int i = 0;i < numEnemies;i++){
      enemies.add(new enemy(i+240));
    }
  }

  void update(){
    for(block[] blocks:room){
      for(block b:blocks){
        b.update();
      }
    }
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
  }
  
  LinkedList<enemy> getEnemies(){
    return enemies;
  }
}
