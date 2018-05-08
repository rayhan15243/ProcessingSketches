float xPos; // x-position
float vx; // speed in x-direction
float radius; // radius of the ball
   
void setup()
{
  size(400,300);
  fill(255,177,8);
  textSize(48);
     
  xPos = width/2;  // Initialise xPos to centre of sketch
  vx = -2; // Set speed in x-direction to -2 (moving left)
  radius = 50;
}
   
void draw()
{
  background(64);
     
  if (xPos == 0) {
      
      vx = 2;
  } else if (xPos > width) {
      vx = -2;
  }
 
  xPos = xPos + vx;  // Change x-position on each redraw
 
  ellipse(xPos, height/2, radius,radius);
  
  
}