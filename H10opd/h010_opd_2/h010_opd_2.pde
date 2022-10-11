import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(500,500);
  
cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setPosition(150,150)
          .setSize(200,200)
          .setCaptionLabel("hoi");
          
knop1.setColorForeground(color(0,255,0));
knop1.setColorBackground(color(255,0,0));
knop1.setColorActive(color(150,255,150));
knop1.setCaptionLabel("KNOP");       

tekstveld1 = cp
              .addTextfield("TextInput1")
              .setCaptionLabel("Type je naam.")
              .setSize(100,20)
              .setPosition(150,100);
}

void draw(){
  
}
  
void Knop1(){
  println("hoi mijn naam is: " + tekstveld1.getText());
    
}
