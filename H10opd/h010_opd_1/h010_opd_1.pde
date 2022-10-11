import controlP5.*;

ControlP5 cp;

Button knop1;

Button knop2;

Textfield tekstveld1;

void setup(){
  size(500,500);
  
cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setPosition(260,150)
          .setSize(200,200)
          .setCaptionLabel("Klik mij!");
          
knop1.setColorForeground(color(0,255,0));
knop1.setColorBackground(color(255,0,0));
knop1.setColorActive(color(150,255,150));
knop1.setCaptionLabel("Klik Mij!");   

knop2 = cp.addButton("Knop2")
          .setPosition(40,150)
          .setSize(200,200)
          .setCaptionLabel("Klik mij!");
          
knop2.setColorForeground(color(0,255,0));
knop2.setColorBackground(color(255,0,0));
knop2.setColorActive(color(200,255,150));
knop2.setCaptionLabel("klik mij!");   
}

void draw(){
  
}
  
void Knop1(){
  println("Correct!");
}

void Knop2(){
  println("Helaas fout");
}
