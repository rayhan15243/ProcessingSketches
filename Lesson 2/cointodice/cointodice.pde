float ran;
 
void setup()
{
  size(200, 200);
  fill(0);
  textSize(48);
  textAlign(CENTER);
 
  ran = random(6.0);
}
  String message;
void draw()
{
 
  if (ran < 1.0)
  {
      message = "ONE";
  } 
  else if (ran < 2.0) {
      message = "TWO";
  }
  else if (ran < 3.0 ) {
      message = "THREE";
  }
  else if (ran < 4.0 ) {
      message = "FOUR";
  }
  else if (ran < 5.0) {
      message = "FIVE";
  }
  else {
      message = "SIX";
  }
  
  
  println(ran);
  text(message, width/2, height/2);
}
 