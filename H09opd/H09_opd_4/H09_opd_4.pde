void setup(){
  size(500,500); 
}

void draw(){
  background(0);
   vierkant (100,100,100,100);
   stroke(255);
}
void vierkant(int x, int y, int w, int h){
  line(x,y,x+w,y);
  line(x,y,x,y+h);
  line(x+w,y+w,x+w,y);
  line(x,y+h,x+h,y+h);
}
