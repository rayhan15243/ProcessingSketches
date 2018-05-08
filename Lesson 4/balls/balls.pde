Ball ball1;    // Declaration of a ball object from the Ball class.
Ball ball2;
Ball ball3;
 
void setup()
{
  size(400, 300);
  ball1 = new Ball();
  ball2 = new Ball();
  ball3 = new Ball();
}
  
void draw()
{
  background(254, 244, 232);
  ball1.draw();
  ball1.move();
  ball2.draw();
  ball2.move();
  ball3.draw();
  ball3.move();
}