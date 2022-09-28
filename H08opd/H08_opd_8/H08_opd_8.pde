int totaal = 10;
int getalEen = 0;
int getalTwee = 1;

for(int i = 0; i <= 10; i++){
  println (getalEen +"+"+ getalTwee);
  totaal = getalEen + getalTwee;
  getalEen = getalTwee;
  getalTwee = totaal;
}
