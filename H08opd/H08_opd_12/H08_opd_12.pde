int x = 20;
int y = 20;

background(255);
size(500,500);

for(int i=1; i<=10; i++){
  for(int j=1; j<=10;j++){
      if (i % 2 == 0) {
        if (j % 2 == 0) {
          fill(255);
        } else {
          fill(0);
        }
      } else {
        if (j % 2 != 0) {
          fill(255);
        } else {
          fill(0);
        }
     }
     rect(x,y,20,20);
     x += 20;
  }
  x = 20;
  y += 20;
}
