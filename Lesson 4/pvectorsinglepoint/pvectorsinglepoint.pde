PVector screenPos;  // Stores a screen position.
// to specify a new PVector, use the new keyword.
void setup()
{
  size(400,400);
  stroke(150,74,50);
  fill(150,74,50);
  strokeWeight(6);
  screenPos = new PVector(width/2,height/2);
}
 
void draw()
{
  background(243,142,45);
  // use .notation x and y to specify x and y coordinates
  ellipse(screenPos.x,screenPos.y,12,12);
  line(screenPos.x,screenPos.y,mouseX,mouseY);
}
 
void mousePressed()
{
  screenPos.x = mouseX;
  screenPos.y = mouseY;
}