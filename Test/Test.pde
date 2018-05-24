player you = new player(0,0);

void setup(){
  size(800,600);
}

void draw(){
  background(255);
  text(frameRate,10,10);
  rect(you.getX(),you.getY(),20,20);
  fill(0);
}

void keyPressed(){
  you.moveRight();
}

class player{
  int x,y;
  
  player(int x_cor,int y_cor){
    x = x_cor;
    y = y_cor;
  }
  
  void moveRight(){
     if(x + 20 < width){
        x += 20; 
     }
  }
  
  void moveLeft(){
     if(y + 20 < height){
        y += 20; 
     }
  }
  
  int getX(){
     return x;
  }
  int getY(){
     return y; 
  }
}