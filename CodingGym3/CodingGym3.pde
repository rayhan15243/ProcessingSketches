boolean showLegend = true;
boolean isMorning = true;
boolean isWeekday = false;
boolean drinkCoffee = isMorning && isWeekday;
boolean isLondon = false;
boolean isSheffield = true;
boolean isCity = isLondon || isSheffield;
boolean canSwim = true;
boolean requiresLifeJacket = !canSwim;
boolean inRange = mouseX >= 10 && mouseX <= 100;

void setup()
{
  size(400, 400);
}

void draw()
{
  background(255);

  for (int y=0; y<height; y+=4)
  {
    if (y % 3 == 0)
    {
      stroke(0);
    }
    else
    {
      stroke(200, 0, 0);
    }
    line (0, y, width,y);
  }

  for (int x=0; x<width; x+=4)
  {
    if (x % 5 == 0)
    {
      stroke(0);
    }
    else
    {
       stroke(0, 0, 200);
    }
    line (x, 0, x, height);
  }
}