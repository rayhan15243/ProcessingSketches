// Draws a slice though HSB colour space
// Jo Wood, 26th January, 2017

// float bri;    // Use to set colour brightness

// void setup()
// {
//  size(400,250);
//  bri = 75;    // Try changing this value between 0-100

//  colorMode(HSB,width,height,100);  // Use HSB colour space.
// }

// void draw()
// {
//  for (int x=0; x<width; x++)
//  {
//    for (int y=0; y<height; y++)
//    {        stroke(x,y, bri);
//        point(x,y);
//    }
//  }

//  noLoop();    // This stops sketch redrawing 60 times per second.
// }


// Draws a colour contrast figure 4.14 from Ware 2004.
// Jo Wood, 26th January, 2017.

// boolean drawBackground;

// void setup()
// {
//  size(600, 300);
//  drawBackground = false;
// }

// void draw()
// {
//  noStroke();

//  if (drawBackground)
//  {
    // Red background.
//   background(150, 0, 0);

    // Blue rectangles
//    fill(0, 0, 100);
//    rect(0, 0, width*.08, height);
//    rect(width*.42, 0, width*.08, height);
//    rect(width*.58, 0, width*.35, height);
//  }
//  else
// {
    // White background.
//    background(255);
//  }

  // Draw crosses
//  stroke(104, 38, 100);
//  strokeWeight(6);

//  line(width*.09, height*.08, width*.41, height*.92);
//  line(width*.09, height*.92, width*.41, height*.08);
//  line(width*.59, height*.08, width*.91, height*.92);
//  line(width*.59, height*.92, width*.91, height*.08);
//}

//void keyPressed()
//{
//  if (key == ' ')
//  {
    // Toggle coloured background variable.
//    drawBackground = !drawBackground;
//  }
// }

// Draws a simple colour range by interpolating colours.
// Jo Wood, 26th January, 2017

// color colour1;  // The two colours between which to
// color colour2;  // construct the colour range.

// void setup()
// {
//  size(400,150);
//  colour1 = color(255,0,0);
//  colour2 = color(0,0,255);
// }

// void draw()
// {
//  for (float x=0; x<width; x++)
//  {
//    color newColour = lerpColor(colour1,colour2,x/width);
//    stroke(newColour);
//    line(x,0,x,height);
//  }

//  noLoop();    // Draw once only.
// }

// Shows the Copenhagen forcast temperatures in the next 5 days.
// Jo Wood, 26th January 2017

// float tue,wed,thu,fri,sat;  // Daily max temperatures.
// color minCol,maxCol;        // Colours representing temp range.

// void setup()
// {
//  size(400,90);
//  noStroke();
//  textAlign(CENTER);

  // Set the forecast temperatures and range
  // tue = 4;
  // wed = -2;
 //  thu = -3;
  // fri = -1;
 //  sat = 1;

  // Use HSB colour space.
  // colorMode(HSB,360,100,100);
 //  minCol = color(238,45,55);   // Blue in HSB space.
 //  maxCol = color(165,67,72);   // Pale green in HSB space.
// }

// void draw()
// {
//  background(0,0,255);

  // fill(lerpColor(minCol,maxCol,norm(tue,-4,4)));
 //  ellipse(width*.1,height/2,30,30);

 //  fill(lerpColor(minCol,maxCol,norm(wed,-4,4)));
 //  ellipse(width*.3,height/2,30,30);

 //  fill(lerpColor(minCol,maxCol,norm(thu,-4,4)));
 //  ellipse(width*.5,height/2,30,30);

 //  fill(lerpColor(minCol,maxCol,norm(fri,-4,4)));
 //  ellipse(width*.7,height/2,30,30);

 //  fill(lerpColor(minCol,maxCol,norm(sat,-4,4)));
 //  ellipse(width*.9,height/2,30,30);

  // Draw text labels.
 //  fill(0,0,0);
 //  text("Copenhagen 5 day temperature forecast",width*.5,20);
 //  text("Tue",width*.1,height-10);
 //  text("Wed",width*.3,height-10);
 //  text("Thu",width*.5,height-10);
 //  text("Fri",width*.7,height-10);
//  text("Sat",width*.9,height-10);

 // noLoop();    // Draw once only.
// }

// import org.gicentre.utils.colour.*;    // For colour tables.

// Sketch to show surface temperature changes using a Brewer colour scheme.
// Jo Wood, 26th January, 2017

// float temp1960,temp1970,temp1980,temp1990,temp2000,temp2010;

// ColourTable cTable;    // Will store a Brewer colour table.

// void setup()
// {
//  size(400,150);
// stroke(180);
// textAlign(CENTER);

//  cTable = ColourTable.getPresetColourTable(ColourTable.OR_RD,0,1);

//  temp1960 = 0.06;
//  temp1970 =-0.04;
//  temp1980 = 0.18;
//  temp1990 = 0.34;
//  temp2000 = 0.55;
//  temp2010 = 0.70;
// }

// void draw()
// {
//  background(255);

//  fill(cTable.findColour(temp1960));
//  rect(width*.05,50,width/8,height/3);

//  fill(cTable.findColour(temp1970));
//  rect(width*.20,50,width/8,height/3);

//  fill(cTable.findColour(temp1980));
//  rect(width*.35,50,width/8,height/3);

//  fill(cTable.findColour(temp1990));
//  rect(width*.50,50,width/8,height/3);

//  fill(cTable.findColour(temp2000));
//  rect(width*.65,50,width/8,height/3);

//  fill(cTable.findColour(temp2010));
//  rect(width*.80,50,width/8,height/3);

//  fill(0);
//  text("Global surface air temperature anomaly",width/2,20);
//  text("5-year mean, base 1951-1980. Source: NASA, 2010",width/2,40);
//  text("1960", width*.11,height-30);
//  text("1970", width*.26,height-30);
//  text("1980", width*.41,height-30);
//  text("1990", width*.56,height-30);
//  text("2000", width*.71,height-30);
//  text("2010", width*.86,height-30);

//  noLoop();      // Draw once only.
// }


// Draws an HB slice though HSB colour space
// Jo Wood, 26th January, 2017

// float fixedSat;    // Use to set colour saturation

// void setup()
// {
//  size(400,250);
//  fixedSat = 70;    // Try changing this value between 0-100
 // colorMode(HSB,width,100,height);  // Use HSB colour space.
// }

// void draw()
// {
//  for (int x=0; x<width; x++)
//  {
//   for (int y=0; y<height; y++)
//    {
//        stroke(x,fixedSat,y);
//        point(x,y);
//    }
//  }
// }

// Draws an SB slice though HSB colour space
// Jo Wood, 26th January, 2017

// float fixedHue;    // Use to set colour hue

// void setup()
// {
//  size(400,250);
//  fixedHue = 45;    // Try changing this value between 0-360
//  colorMode(HSB,360,width,height);  // Use HSB colour space.
// }

// void draw()
// {
//  for (int x=0; x<width; x++)
//  {
//    for (int y=0; y<height; y++)
//    {
//        stroke(fixedHue,x,y);
//        point(x,y);
//    }
//  }
// }

import org.gicentre.utils.colour.*;    // For colour tables.

// Sketch to show surface temperature changes over time.
// Jo Wood, 12th February 2015

Table dataTable;
int minYear = MAX_INT;
int maxYear = MIN_INT;

ColourTable cTable;    // Will store a Brewer colour table.

void setup()
{
  size(800, 400);
  dataTable = loadTable("airTemperatures.tsv","header,tsv");
  cTable = ColourTable.getPresetColourTable(ColourTable.RD_BU, -1, 1);

  for (int row=0; row<dataTable.getRowCount(); row++)
  {
    minYear = min(minYear, dataTable.getInt(row, "year"));
    maxYear = max(maxYear, dataTable.getInt(row, "year"));
  }
}

void draw()
{
  background(255);
  strokeWeight(0.5);

  float leftBorder = 30;
  float graphWidth = width-leftBorder;

  int numRows = dataTable.getRowCount();
  float barWidth = graphWidth/numRows;
  float linePos;      // Used for drawing time lines.

  // Draw time markers
  stroke(180);
  fill(120);
  textAlign(CENTER);
  for (int yr=minYear; yr<=maxYear; yr+=10)
  {
    linePos = map(yr, minYear, maxYear, leftBorder, graphWidth-barWidth) + barWidth/2;
    line(linePos, 40, linePos, height-40);
    text(yr, linePos, height-20);
  }

  // Draw chart title
  textAlign(LEFT);
  text("Global surface air temperature change (5 year running mean, base: 1951-1980)",
  leftBorder, 20);
  text("Source: NASA, 2010", leftBorder, 35);

  // Draw temperature axis.
  textAlign(RIGHT, CENTER);
  for (float temp=-0.6; temp<=0.6; temp+= 0.2)
  {
    text(nf(temp, 1, 1), leftBorder, map(temp, -0.8, 0.8, height, 0));
  }

  // Draw temperature bars.
  stroke(0, 80);
  for (int row=0; row<numRows; row++)
  {
    float temp = dataTable.getFloat(row, "AnnualMean");
    float temp5 = dataTable.getFloat(row, "5YearMean");

    float barHeight = map(temp5, -0.8, 0.8, height/2, -height/2);
    float barPosition = map(row, 0, numRows-1, leftBorder, graphWidth-barWidth);

    // Colour by annual mean temperatre, but size by 5-year mean.
    fill(cTable.findColour(-temp));
    rect(barPosition, height/2, barWidth, barHeight);
  }

  // Highlight 1951 to 1980 over which basesline temperature was calculated.
  stroke(50);
  float left = map(1951, minYear, maxYear, leftBorder, graphWidth-barWidth) + barWidth/2;
  float right = map(1980, minYear, maxYear, leftBorder, graphWidth-barWidth) + barWidth/2;
  line(left, height/2, right, height/2);

  noLoop();    // Only draw once.
}