class room{
  LinkedList<enemy> enemies;
  //24x18 chunks sound decent
  block[] room = new block[58];
  room(){
    enemies = new LinkedList();
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
  }
  
  LinkedList<enemy> getEnemies(){
    return enemies;
  }
}
