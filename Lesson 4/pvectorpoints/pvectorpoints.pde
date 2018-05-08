ArrayList<PVector> clickedPoints;  // Stores all clicked positions.
 
void setup()
{
  size(400,400);
  stroke(150,74,50);
  fill(150,74,50);
  strokeWeight(6);
   
  clickedPoints = new ArrayList();
  clickedPoints.add(new PVector(width/2,height/2));
}
 
void draw()
{
  background(243,142,45);
   
  for (PVector screenPos : clickedPoints)
  {
    ellipse(screenPos.x,screenPos.y,12,12);
    line(screenPos.x,screenPos.y,mouseX,mouseY);
  }
}
 
void mousePressed()
{
  clickedPoints.add(new PVector(mouseX,mouseY));
}