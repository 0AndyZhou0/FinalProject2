class room{
  //24x18 chunks sound decent
  block[][] room = new block[18][24];

  void room(){
    for(int r = 0;r < 18;r++){
      for(int c = 0;c < 24;c++){
        room[r][c] = new block(true,false);
      }
    }
  }

  void update(){
    for(block[] r: room){
      for(block b : r){
       b.update(); 
      }
     }
  }
}
