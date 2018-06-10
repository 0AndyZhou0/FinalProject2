class room{
  LinkedList<enemy> enemies;
  //24x18 chunks sound decent
  room(){
    enemies = new LinkedList();
    int numEnemies = (int)random(4)+2;
    for(int i = 0;i < numEnemies;i++){
      enemies.add(new enemy(i+240));
    }
  }

  void update(){
    for(block b:room){
      b.update();
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
    if(pleb.x < 40){
      level.moveLeft();
    }
  }
  
  LinkedList<enemy> getEnemies(){
    return enemies;
  }
}
