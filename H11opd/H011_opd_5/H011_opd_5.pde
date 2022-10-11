String zoekNaam = "jan";
boolean gevonden = false;
String[] naam = {"jan", "willem", "stephan", "darcy" ,"jeno"};

void setup(){
gevonden = false;
for(int i = 0; i < naam.length; i++){
  if( zoekNaam == naam[i]){
    gevonden = true;
    }
  }
  if(gevonden){
  println("ja de naam " + zoekNaam + " bestaat!");
}else{
  println("nee de naam " + zoekNaam +" bestaat niet");
  }
} 
