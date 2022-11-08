float x,y,s = 100;
int score = 0;
int seconden = 0;
int timeSpent = 0;
int millisLeft;
int aantalSec;
String text;
boolean pressed;
boolean tijd = false;

void setup(){
  fullScreen();
  //size(500,500);
  textAlign(CENTER);
  textSize(35);
  resetPos();
}

void draw(){
  background(0);
  fill(255);

  if(tijd == true){
    aantalSec = 9 - (millis()/1000) + timeSpent;
    millisLeft = 1000 - (millis()%1000);
  }

  
  if(!tijd){
    aantalSec = 0;
    millisLeft = 0;
  }
  
 if(aantalSec == -1){
   tijd = false;
   resetPos();
 }
 
  if(!pressed && mousePressed && tijd){
    pressed = true;
    if(mouseX > x - (s/2) && mouseY < y + (s/2) && mouseX < x + (s/2)){
      if(s < 50){
        score++;
      }
      score++;
      randomPos();
      s = max(20,s-10);
    }else{
      resetPos();
     // randomPos();
      score -= 1;
      s = min(200,s+10);
    }
  }
  
  if(pressed && !mousePressed){
    pressed = false;
  }
  
  if(!tijd){
    aantalSec = 0;
    millisLeft = 0;
    textSize(height/15);
    text("Press any button to start", width/2,height/2);   
    textSize(height/20);
    text("Your score was:" + score,width /2 , height/3);
    s = 100;
  }

 if(tijd){
  textSize(height/25);
  text("press any button to stop", width/2, height/ 1.05);
  ellipse(x,y,s,s);
  text("Score " + score,width /2 , 40);
  text("seconden " + aantalSec + " " + nf(millisLeft, 3), width /2,80);
   if(score <= -4 && score >= -10){
   text("maybe you should try again", width /2, 150);
 }else{
   if (score <= -10){
   text("just stop",width /2, 150);
      }
    }
  }
}

void resetPos(){
  x = width /2;
  y = height /2;
}

void keyPressed(KeyEvent r){
  if(!tijd){
    aantalSec = 9;
    timeSpent = millis()/1000;
    score = 0;
    resetPos();
    tijd = true;
  }else{
    tijd = false;
  }
}

void randomPos(){
  x = random(x/1.5, width - (x/1.5));
  y = random(x/1/5, height - (x/1.5));
}
