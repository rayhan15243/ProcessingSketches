class Ball
{
  PVector position;    // Position of the ball.
  PVector velocity;    // Amount it moves on each redraw.
  float diameter;      // Size of ball.
  color colour;        // Colour of ball.
 
  // Initialises the ball's state.
  Ball()
  {
    frameRate(300);
    position = new PVector(width/2, height/2);
    velocity = new PVector(random(-3,2),random(-3,2));
    diameter = 30;
    colour   = color(0,0,255);
  }
 
  // Draws the ball at its current position.
  void draw()
  {
    noStroke();
    fill(colour);
    ellipse(position.x, position.y, diameter, diameter);
 
 
  }
 
  // Moves the ball according to its current velocity.
  void move()
  {
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;
 
    if (position.x < 0)
    {
      velocity.x = -1 * velocity.x; // If we are left of sketch move ball right.
      diameter = 30;
    }
    else if (position.x > width)
    {
      velocity.x = -1 * velocity.x; // If we are right of sketch move ball left.
    }
 
    if (position.y < 0)
    {
      velocity.y = -1 * velocity.y; // If we are at top of sketch move ball down.
    }
    else if (position.y > height)
    {
      velocity.y = -1 * velocity.y; // If we are ar bottom of sketch move ball up.
    }
  }
}