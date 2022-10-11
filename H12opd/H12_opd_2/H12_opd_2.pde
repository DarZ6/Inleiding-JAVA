int seconden; 
int aantalSpaties = 0;
int millisLeft;
int leftAmount;
boolean racing = true;


void setup(){
  size (500,500);
}

void draw(){
  background(255,255,255);
  
  seconden = millis()/1000;
  leftAmount = 9 - seconden;
  millisLeft = 1000 - (millis()%1000);
 
  if(!racing){
    leftAmount = 0;
    millisLeft = 0;
  }
  
  if(seconden >= 10){
    racing = false;
   }
     fill(0,0,0);
   text("spaties " + aantalSpaties, 200,200);
   text("seconden " + leftAmount + " " + nf(millisLeft, 3), 200,220);
}

void keyReleased(){
  if(keyCode == 32 && racing){
    aantalSpaties++;
  }
}
