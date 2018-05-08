// Simple sketch to demonstrate animated transitions by interpolating between
// between start and end conditions.
// Jo Wood, 16th March 2017.

/* float t;      // Varies between 0 and 1 indicating position between start and end
float inc;    // Amount by which t changes on each redraw.
float startSize, endSize;           // Start and end size of text.
color startColour, endColour;       // Start and end colours.
float xStart, yStart, xEnd, yEnd;   // Start and end positions of text.

void setup()
{
  size(400, 250);
  t=0.5;            // Set to midway between start and end positions.
  inc = 0;          // Initially there is no change
  startSize = 8;
  xStart    = 10;
  yStart    = 20;
  endSize   = 24;
  xEnd      = 250;
  yEnd      = 240;
  startColour = color(211, 83, 41);
  endColour   = color(51, 41, 211);
}

void draw()
{
  background(245,232,213);
  t  = t + inc;      // Change t by the value of 'inc' on each redraw.

  // Check to see if t has reached either 0 (start) or 1 (end).
  if (t <= 0)
  {
    t = 0;
    inc = 0;
  }
  else if (t >= 1)
  {
    t = 1;
    inc = 0;
  }

  // Do the drawing.
  fill(lerpColor(startColour, endColour, t));
  textSize(lerp(startSize, endSize, t));
  text("Animate me", lerp(xStart, xEnd, t), lerp(yStart, yEnd, t));
}

// Allow the 'S' and 'E' keys to control movement to start or end positions.
void keyPressed()
{
  if (key == 's')
  {
    inc = -0.02;    // Move t towards 0 by 2% on each redraw
  }
  else if (key == 'e')
  {
     inc = 0.02;    // Move t towards 1 by 2% on each redraw
  }
}

*/

/* int[] examResults = new int[] {68,61,75,52,58,79,72,66};

void setup()
{
  size(201,100);
}

void draw()
{
  background(255);
  fill(100,160,160);

  float barWidth = 25;
  for (int i=0; i<examResults.length; i++)
  {
    rect(i*barWidth, 0, barWidth, examResults[i]);
  }
}

*/ 

/*
int[] examResults = new int[] {68,61,75,52,58,79,72,66};

void setup()
{
  size(400,250);
}

void draw()
{
  background(255);
  fill(100,160,160);

  float barWidth = (width-40)/examResults.length;

  for (int i=0; i<examResults.length; i++)
  {
    float barHeight = map(examResults[i],0,100,0,-(height-20));
    rect(20 + i*barWidth, height-20, barWidth, barHeight);
  }
}

*/

/* int[] examResults = new int[] {68,61,75,52,58,79,72,66};
float barWidth;
float barBottom;      // Bottom of the chart

void setup()
{
  size(400,250);
  barWidth = (width-40)/examResults.length;
  barBottom = height-20;    // Bars are 20 pixels from bottom of sketch.
}

void draw()
{
  background(255);
  fill(100,160,160);

  for (int i=0; i<examResults.length; i++)
  {
    rect(barToScreen(i), barBottom,
         barWidth, percentToScreen(examResults[i]) - barBottom);
  }

  // Highlight selected bar if mouse hovers over one.
  float barNum = screenToBar(mouseX);
  float percent = screenToPercent(mouseY);
  if ((barNum >=0) && (barNum <examResults.length) &&
      (percent >=0) && (percent <= examResults[int(barNum)]))
  {
     fill(45,105,105);
     rect(barToScreen(int(barNum)), barBottom,
          barWidth, percentToScreen(examResults[int(barNum)])-barBottom);
  }
}

*/

/*import org.gicentre.utils.stat.*;    // For chart classes.
import org.gicentre.utils.colour.*;  // For bar chart colour table.

// Simple bar chart with interactive highlighting
// Jo Wood, 9th February, 2017

BarChart barChart;
float[] data,colours;

void setup()
{
  size(300,200);

  data = new float[] {0.76, 0.24, 0.39, 0.18, 0.00, 0.05};
  colours = new float[data.length];
  ColourTable cTable = new ColourTable();
  cTable.addDiscreteColourRule(0, 100,160,160);  // Normal colour = 0
  cTable.addDiscreteColourRule(1,  45,105,105);  // Highlight colour = 1

  barChart = new BarChart(this);
  barChart.setData(data);
  barChart.setBarColour(colours,cTable);
}

// Draw the bar chart
void draw()
{
  background(255);
  barChart.draw(15,15,width-30,height-30);
  noLoop();    // Don't redraw unless the mouse is moved.
}

// Only test for bar highlighting when the mouse moves
void mouseMoved()
{
  // Reset all colours to non-highlighted
  for (int i=0; i<data.length; i++)
  {
    colours[i] = 0;
  }

  // See if mouse is over a bar.
  PVector dataUnderMouse = barChart.getScreenToData(new PVector(mouseX,mouseY));
  if (dataUnderMouse != null)
  {
    int selectedBar = int(dataUnderMouse.x);
    float dataValue = dataUnderMouse.y;

    if (dataValue < data[selectedBar])
    {
      colours[selectedBar] = 1;
    }
  }
  loop();    // Redraw whenever the mouse is moved.
}

*/

// Sketch to illustrate transformations between geographic and screen coordinates.
// Jo Wood, 9th February 2017.
/*
PImage backgroundMap;
float mNorth,mSouth,mWest,mEast;

void setup()
{
  size(375,700);
  textAlign(LEFT,TOP);
  backgroundMap = loadImage("gbMap.png");
  mNorth = 1218610;
  mSouth = 7020;
  mWest  = 5720;
  mEast  = 655500;
}

void draw()
{
  background(255);

  // Display background map image.
  image(backgroundMap,0,0);

  // Find the geographic equivalent of current mouse position.
  PVector geoMouse = screenToGeo(new PVector(mouseX,mouseY));

  // Display rounded geographic coordinates 5 pixels from top-left.
  fill(50);
  text(int(geoMouse.x)+" , "+int(geoMouse.y), 5,5);
}
*/

import org.gicentre.utils.gui.*;    // For text input.

// Sketch to display location of places using a simple gazetteer.
// Jo Wood, 17th March, 2017.

PImage backgroundMap;
float mNorth,mSouth,mWest,mEast;
Table gazetteer;        // Name to geo coordinates conversion.
TextInput textInput;    // User input.
PVector selectedLocation;

void setup()
{
  size(376,700);

  PFont font = createFont("sans-serif",14);
  textFont(font);
  textInput = new TextInput(this,font,14);

  gazetteer = loadTable("townsAndCities.txt","tsv,header");
  backgroundMap = loadImage("gbMap.png");
  mNorth = 1218610;
  mSouth = 7020;
  mWest  = 5720;
  mEast  = 655500;
}

void draw()
{
  background(255);
  image(backgroundMap,0,0);

  if (selectedLocation != null)
  {
    fill(0,90);
    ellipse(selectedLocation.x,selectedLocation.y,12,12);
    fill(0);
    ellipse(selectedLocation.x,selectedLocation.y,4,4);
  }

  // Draw user input area
  strokeWeight(0.1);
  stroke(0);
  fill(0,200);
  rect(5,5,215,60,8);
  textAlign(LEFT,TOP);
  fill(255);
  text("Type in a place name:",10,10);
  textInput.draw(10,40);

  noLoop();      // Don't redraw unless a key is pressed.
}

void keyPressed()
{
  if ((keyCode == RETURN) || (keyCode == ENTER))
  {
    PVector geoLocation = findPlace(textInput.getText());
    if (geoLocation == null)
    {
      selectedLocation = null;
    }
    else
    {
      selectedLocation = geoToScreen(geoLocation);
    }
  }
  else
  {
    // Transfer any key presses to the text input.
    textInput.keyPressed();
  }

  loop();  // Redraw since keyboard input changes display.
}

// Converts from screen coordinates to geographic coordinates.
PVector screenToGeo(PVector sLocation)
{
  return new PVector(map(sLocation.x,0,width,mWest,mEast),
                     map(sLocation.y,height,0,mSouth,mNorth));
}

// Converts from geographic coordinates to screen coordinates.
PVector geoToScreen(PVector gLocation)
{
  return new PVector(map(gLocation.x,mWest,mEast,0,width),
                     map(gLocation.y,mSouth,mNorth,height,0));
}

// Searches for the given name in the gazetteer and
// reports the geographic coordinates if found.
PVector findPlace(String placeName)
{
  TableRow result = gazetteer.findRow(placeName, "name");

  if (result != null)
  {
    return new PVector(result.getFloat("easting"),
                       result.getFloat("northing"));
  }
  return null; // Name was not found if we get to this point.
}