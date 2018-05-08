// Reports the screen x-coordinate associated with the given bar number.
/* float barToScreen(int barNumber)
{
  int numBars = examResults.length-1;
  return map(barNumber,0,numBars,20,20+barWidth*numBars);
}

// Reports the screen y-coordinate associated with the given percentage.
float percentToScreen(int percentage)
{
  return map(percentage,0,100,barBottom,0);
}

// Reports the bar number associated with the given screen x-coordinate.
float screenToBar(float xPos)
{
  int numBars = examResults.length-1;
  return map(xPos,20,20+barWidth*numBars,0,numBars);
}

// Reports the percentage value associated with the given screen y-coordinate.
float screenToPercent(float yPos)
{
  return map(yPos,0,barBottom,100,0);
}
*/


// Converts from screen coordinates to geographic coordinates.
/* PVector screenToGeo(PVector sLocation)
{
  PVector gLocation = new PVector();
  gLocation.x = map(sLocation.x,0,width,mWest,mEast);
  gLocation.y = map(sLocation.y,height,0,mSouth,mNorth);
  return gLocation;
}

// Converts from geographic coordinates to screen coordinates.
PVector geoToScreen(PVector gLocation)
{
  PVector sLocation = new PVector();
  sLocation.x = map(gLocation.x,mWest,mEast,0,width);
  sLocation.y = map(gLocation.y,mSouth,mNorth,height,0);
  return sLocation;
}

*/