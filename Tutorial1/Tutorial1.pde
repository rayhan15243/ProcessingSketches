// Draws an ellipse that follows the mouse position.
// Jo Wood, 9th January, 2017

// Draws an ellipse at the current mouse position.
// Jo Wood, 26th January, 2017

void setup()
{
  size(500,450);
  background(255);
}

void draw()
{
  // Draw transparent background and rectangle with fixed border size.
  fill(255,5);
  strokeWeight(0.5);
  rect(0,0,width-1,height-1);

  // Draw ellipse at mouse position varying boundary by position.
  strokeWeight(10.0*mouseX*mouseY/(width*height));
  fill(120,180,120);
  ellipse(mouseX,mouseY,width/10,height/15);
}

// void setup()
// {
// size(500,450);
// }

// void draw()
//{
// Draw transparent background.
//  fill(255,10);
// rect(0,0,width,height);

// Draw red ellipse at mouse position.
  
// Make the width of the ellipse 10% of the width of the sketch and its height 6% (1/15th) of the height of the sketch

  
//  fill(0,255,0,50);
//  ellipse(mouseX,mouseY, mouseY-width/10,height/6);
  
 
//}

// rect(50,10,30,40);
// x,y,w,h
// RGB - 0 no colour
// R - 255 
// G - 0 
// B - 0 
// Transparancy 