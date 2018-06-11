class room{
  LinkedList<enemy> enemies;
  LinkedList<block> doors;
  int numDoors = 0;
  room(){
    doors = new LinkedList();
    enemies = new LinkedList();
    int numEnemies = (int)random(4)+2;
    for(int i = 0;i < numEnemies;i++){
      enemies.add(new enemy(i+240));
    }
    if(level.playerY > 0 && level.map[level.playerY-1][level.playerX] != '#'){
      numDoors++;
      doors.addFirst(new block(true,300,0));
      doors.addFirst(new block(true,350,0));
      doors.addFirst(new block(true,400,0));
      doors.addFirst(new block(true,450,0));
    }else{
      doors.addLast(new block(true,300,0));
      doors.addLast(new block(true,350,0));
      doors.addLast(new block(true,400,0));
      doors.addLast(new block(true,450,0));
    }
    if(level.playerY < level.map.length-1 && level.map[level.playerY+1][level.playerX] != '#'){
      numDoors++;
      doors.addFirst(new block(true,300,550));
      doors.addFirst(new block(true,350,550));
      doors.addFirst(new block(true,400,550));
      doors.addFirst(new block(true,450,550));
    }else{
      doors.addLast(new block(true,300,550));
      doors.addLast(new block(true,350,550));
      doors.addLast(new block(true,400,550));
      doors.addLast(new block(true,450,550));
    }
    if(level.playerX > 0 && level.map[level.playerY][level.playerX-1] != '#'){
      numDoors++;
      doors.addFirst(new block(true,0,200));
      doors.addFirst(new block(true,0,250));
      doors.addFirst(new block(true,0,300));
      doors.addFirst(new block(true,0,350));
    }else{
      doors.addLast(new block(true,0,200));
      doors.addLast(new block(true,0,250));
      doors.addLast(new block(true,0,300));
      doors.addLast(new block(true,0,350));
    }
    if(level.playerY > 0 && level.map[level.playerY-1][level.playerX] != '#'){
      numDoors++;
      doors.addFirst(new block(true,750,200));
      doors.addFirst(new block(true,750,250));
      doors.addFirst(new block(true,750,300));
      doors.addFirst(new block(true,750,350));
    }else{
      doors.addLast(new block(true,750,200));
      doors.addLast(new block(true,750,250));
      doors.addLast(new block(true,750,300));
      doors.addLast(new block(true,750,350));
    }
  }

  void update(){
    for(block b:room){
      b.update();
    }
    for(block b:doors){
      b.update();
    }
    if(enemies.size() > 0){
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
    }else{
      if(pleb.x < 40){
        level.moveLeft();
      }
    }
  }
}
