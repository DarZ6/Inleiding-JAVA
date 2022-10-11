

void setup(){
 background(255,255,255);
 size(500,500);
 noStroke();
}

void draw(){
}

void mouseDragged(){
  int r = floor(random(256));
  int g = floor(random(256));
  int b = floor(random(256));
  fill(r,g,b);
  rect(mouseX,mouseY,20,20);
}
void mousePressed(){
  rect(mouseX,mouseY,20,20);
}
