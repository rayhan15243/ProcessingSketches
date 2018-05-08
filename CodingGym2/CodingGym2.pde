int year;
String myName;
float mx = map(mouseX,0,width-1,-1000,1000);

void setup()
{
   
  int year1 = 2017;
  int year2 = 1996;
  year = 2017;


  int numYears = year1-year2;
  
  size(200,150);
  myName = "Jo Wood";
}

void draw () {
  ellipse(width/2,height/2,year/25,year/25);
  background(255);
  fill(0);
  text(myName,20,20);
  
for (int counter=100; counter>0; counter = counter-7)
{
  println(counter);
}

  background(255);

  for (float xPos = 12; xPos <= width-12; xPos = xPos + (width-24)/9.0)
  {
    ellipse(xPos,height/2,10,10);
  }
  
  background(255);

  for (float yPos = 15; yPos <= height-15; yPos = yPos + (height-30)/4.0)
  {
    for (float xPos = 12; xPos <= width-12; xPos = xPos + (width-24)/9.0)
    {
      ellipse(xPos,yPos,10,10);
    }
  }
}