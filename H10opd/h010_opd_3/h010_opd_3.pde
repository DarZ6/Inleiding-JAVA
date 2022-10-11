import controlP5.*;
float antwoord;
float getal;
int tussengetal;
String bedrag;
ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(500,500);
  
cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setPosition(150,150)
          .setSize(200,200)
          .setCaptionLabel("Klik mij!");
          
knop1.setColorForeground(color(0,255,0));
knop1.setColorBackground(color(255,0,0));
knop1.setColorActive(color(150,255,150));
knop1.setCaptionLabel("bereken bedrag:");

tekstveld1 = cp
                .addTextfield("bedrag")
                .setPosition(width/4,20)
                .setText("bedrag")
                .setCaptionLabel("type hier het bedrag")
                .setColorLabel(color(0));
}
void draw(){
  
}
  
void Knop1(){
getal = float(tekstveld1.getText());
antwoord = getal *= 1.21;

println("het bedrag inclusief btw is: " + antwoord);
}
