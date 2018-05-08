float randomNumber;
float randomNumber2;
 
void setup()
{
  size(400, 300);
  fill(0);
  textSize(32);
  textAlign(CENTER);
 
  randomNumber = random(2.0);
  randomNumber2 = random(2.0);
}

 String message;
void draw()
{
  background(230, 255, 230);
 
 
  if (randomNumber < 1.0 && randomNumber2 < 1.0){
    message = "TWO TAILS";
  } else if (randomNumber > 1.0 && randomNumber2 > 1.0 ){
    message = "TWO HEADS";
  } else {
    message = "MIXED";
  }
  println(randomNumber + " " + randomNumber2);
  text(message, width/2, height/2);
}