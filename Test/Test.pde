int x,y;

void setup(){
  size(800,600);
  background(255);
  x = 0;
  y = 0;
}

void draw(){
  rect(x,y,20,20);
  fill(0);
}

void keyPressed(){
  println(key);
  background(255);
  if(key == 'w'){
    if(y > 0){
     y-=20;
    }
  }
  if(key == 'a'){
    if(x > 0){
     x-=20;
    }
  }
  if(key == 's'){
    println(height);
    if(y + 20 < height){
     y+=20;
    }
  }
  if(key == 'd'){
    if(x + 20 < width){
     x+=20;
    }
  }
}