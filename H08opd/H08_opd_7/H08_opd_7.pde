int teller = 9;
boolean doorgaan = true;

while(doorgaan){
  if(teller > 19){
      doorgaan = false;
  }else{
    teller++;
    println(teller);
  }
}
