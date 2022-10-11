String zin;

void setup(){
  size(500,500); 
  zin = langeZin("Hoi ","dit is" ," niet zo ","lang");
  println(zin);
}

void draw(){
  background(0);
}
String langeZin(String a, String b, String c, String d){
  String antwoord;
  antwoord = a + b + c + d;
  return antwoord;
}
