int x = 20;
int y = 20;

background(255);
size(500,500);

for(int i=1; i<=10; i++){
  for(int j=1; j<=10;j++){
    rect(x,y,20,20);
    y += 20;
  }
    y = 20;
    x += 20;
}
