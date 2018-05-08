// Reads and displays some simple text and hashtags in a sketch
// Jo Wood, 10th February 2017

// String[] lines;    // Stores all the lines of text to display.

// void setup()
// {
//  size(900,370);
//  textSize(11);            // 11pt text size.

  // Read the lines of text from a file into a String array
//  lines = loadStrings("tweets.txt");
// }

// void draw()
// {
//  background(250,235,200);
//  float yPos = 20;    // Vertical position of text.

//  for (String textLine : lines)
//  {
    // Split each line into words
//    String[] words = split(textLine," ");
//    float xPos = 10;  // Horizontal position of text.

//    for (String word : words)
//    {
//      if (word.startsWith("#"))
//      {
//        fill(183,56,46);    // Red
//      }
//      else if (word.startsWith("@"))
//      {
//        fill(51,108,47);    // Green
//      }
//      else if (word.startsWith("http"))
//      {
//        fill(46,56,103);    // Blue
//      }
//      else
//      {
//        fill(40,15,15);    // Dark brown
//      }

//      text(word+" ",xPos,yPos);
//      xPos = xPos + textWidth(word+" ");
//    }
//    yPos = yPos + 14;
//  }

//  noLoop();    // Display only once.
// }

// Reads and displays GDP data.
// Jo Wood, 10th February 2017

/* float[] years;    // Stores a collection of dates.
float[] gdps;     // Stores a collection of GDP values.

float minYear, maxYear;
float minGDP  = MAX_FLOAT;
float maxGDP  = MIN_FLOAT;

void setup()
{
  size(400, 200);
  readData();
  findMinMax();
}

void draw()
{
  background(255);

  beginShape();    // Start a line shape.
  for (int i=0; i<years.length; i++)
  {
    if (gdps[i] > 0)
    {
      // Plot each coordinate pair in the line.
      float x = map(years[i], minYear, maxYear, 0, width);
      float y = map(gdps[i], minGDP, maxGDP, height, 0);
      vertex(x, y);
    }
  }
  endShape();    // End the line shape.

  noLoop();      // Draw just once.
}

// Finds the minimum and maximum values in the data.
void findMinMax()
{
  for (float gdp : gdps)
  {
    minGDP = min(minGDP, gdp);
    maxGDP = max(maxGDP, gdp);
  }
  // Years are in order, so min/max are first and last elements.
  minYear = years[0];
  maxYear = years[years.length-1];
}

*/

// Displays London Bike Hire docking stations by reading a JSON file
// containing station status data.
// Jo Wood, 10th February, 2017.

/* Table dsTable;
float minLng,maxLng,minLat,maxLat;

void setup()
{
  size(900, 500);
  textSize(6);
  textAlign(CENTER, BOTTOM);
  noStroke();

  readJSON();         // Reads the docking station details from a JSON file.
  minLng = -0.237;    // E-W and N-S range of station locations.
  maxLng = -0.002;
  minLat = 51.454;
  maxLat = 51.550;
}

void draw()
{
  background(255);

  for (int row=0; row<dsTable.getRowCount(); row++)
  {
    float x = map(dsTable.getFloat(row,"longitude"),minLng,maxLng,50,width-50);
    float y = map(dsTable.getFloat(row,"latitude"),minLat,maxLat,height,10);

    fill(80);
    text(dsTable.getString(row,"name"),x,y);
    fill(120, 50, 50);
    ellipse(x, y, 4, 4);
  }
  noLoop();      // Just draw once.
}

*/

// Reads and displays a set of GPS waypoints.
// Jo Wood, 10th February, 2017

float[] easting,northing;
float minX = MAX_FLOAT;
float minY = MAX_FLOAT;
float maxX = MIN_FLOAT;
float maxY = MIN_FLOAT;

void setup()
{
  size(400,400);
  strokeWeight(0.5);

  XML xml = loadXML("waypoints.gpx.xml");
  XML[] routePoints = xml.getChildren("rte/rtept");
  int numPoints = routePoints.length;
  easting  = new float[numPoints];
  northing = new float[numPoints];

  for (int i=0; i<numPoints; i++)
  {
    easting[i]  = routePoints[i].getFloat("lon");
    northing[i] = routePoints[i].getFloat("lat");

    minX = min(minX,easting[i]);
    maxX = max(maxX,easting[i]);
    minY = min(minY,northing[i]);
    maxY = max(maxY,northing[i]);
  }
}

void draw()
{
  background(220,250,220);
  beginShape();
  for (int i=0; i<easting.length; i++)
  {
    float x = map(easting[i],minX,maxX,10,width-10);
    float y = map(northing[i],minY,maxY,height-10,10);

    vertex(x,y);
    fill(50,50,100);
    ellipse(x,y,3,3);
    noFill();
  }
  endShape();

  noLoop();      // Draw only once.
}