float xPos; // positon of text along x-axis
float vx; // speed of text in x-direction
  
void setup()
{
  size(600,100);
  fill(255,177,8);
  textSize(48);
    
  xPos = width;  // Initialise xPos to right of sketch
  vx = -2; // Set speed in x-direction to -2 (moving left)
  
  
}
  
void draw()
{
  background(64);
 
  String message = "The next station is Angel...";
  
 
   xPos = xPos + vx;  // Change x-position on each redraw
 
   
  if (xPos == -width) {
      
     xPos = width;
  } 
 
 
  text(message,xPos,(height/2) + 20);
}