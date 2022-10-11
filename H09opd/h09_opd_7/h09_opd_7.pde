int x = 0;
int y = 0;

void setup(){
  background(255);
  size(500,500);
}

void draw(){
  fill(255,0,0);
for(int i=1; i<=100; i++){
  for(int j=1; j<=100;j++){
    rect(x,y,50,20);
    x += 50;
  }
    x =+ -25*i;
    y += 20;
  }
}
