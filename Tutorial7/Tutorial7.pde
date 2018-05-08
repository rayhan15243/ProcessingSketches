/* PImage mapImage;
float minLong, maxLong, minLat, maxLat;

void setup()
{
  size(800,400);
  mapImage = loadImage("globalRelief.jpg");
  minLong = -180;
  maxLong =  180;
  minLat  = -90;
  maxLat =   90;
}

void draw()
{
  image(mapImage,0,0,width,height);
  drawGraticule();
  noLoop();
}

// Draw a grid of latitude and longitude lines over map.
void drawGraticule()
{
  stroke(0,90);
  strokeWeight(0.1);

  for (float longitude = -180; longitude < 180; longitude = longitude+10)
  {
    float xPos = map(longitude, minLong,maxLong, 0,width);
    line(xPos,0,xPos,height);
  }

  for (float latitude = -90; latitude < 90; latitude = latitude + 10)
  {
     float yPos = map(latitude, minLat,maxLat, height,0);
     line(0,yPos,width,yPos);
  }
}

*/
/*
import org.gicentre.geomap.*;

GeoMap geoMap;

void setup()
{
  size(800, 500);

  geoMap = new GeoMap(10, 10, width-20, height-20, this);
  geoMap.readFile("londonBoroughs");   // Reads shapefile.
}

void draw()
{
  background(230,215,205);
  fill(250,250,240);
  strokeWeight(0.5);
  geoMap.draw();

  // Highlight borough under mouse
  int id = geoMap.getID(mouseX, mouseY);
  if (id != -1)
  {
    fill(160, 140, 140);
    geoMap.draw(id);

    fill(0);
    textAlign(CENTER,BOTTOM);
    textSize(16);
    text(geoMap.getAttributeTable().findRow(str(id),0).getString("NAME"),mouseX,mouseY);
  }
}
*/

/*

// Shows birth by month as a radial plot.
// Jo Wood, 9th March, 2017.

float births[];
String labels[];

void setup()
{
  size(600,600);

  births = new float[] {340297, 319235, 356786, 329809, 355437, 358251,
                        367934, 387798, 374711, 367354, 351832, 356111};
  labels = new String[] {"J","F","M","A","M","J","J","A","S","O","N","D"};
}

void draw()
{
  background(245,235,222);

  float aMonth = radians(360/12);
  float aCurrent = radians(-90);
  float cx = width/2;
  float cy = height/2;

  strokeWeight(3);
  stroke(245,235,222);
  for (int m = 0; m<12; m++)
  {
    float birth = births[m];
    float diameter = map(birth,0,390000,0,width-10);

    // Draw pie slice.
    fill(186,101,91);
    arc(cx,cy, diameter,diameter, aCurrent,aCurrent+aMonth,PIE);
    aCurrent += aMonth;

    // Draw labels
    fill(72,66,54);
    textSize(24);
    textAlign(CENTER,CENTER);
    text(labels[m],cx+width*0.3*sin(HALF_PI-aCurrent+aMonth/2),
                   cy+width*0.3*cos(HALF_PI-aCurrent+aMonth/2));
  }

  // Draw concentric circles to ease comparison.
  noFill();
  stroke(0,50);
  strokeWeight(1.5);
  float diameter = width-10;
  ellipse(cx,cy,diameter/2,diameter/2);
  ellipse(cx,cy,diameter,diameter);

  noLoop();      // Draw just once.
}

*/

/* 
import de.fhpotsdam.unfolding.*;           // For the map variable type
import de.fhpotsdam.unfolding.geo.*;       // For location variable type
import de.fhpotsdam.unfolding.utils.*;     // For handling interaction.
import de.fhpotsdam.unfolding.providers.*; // For different map styles.

UnfoldingMap[] maps;
UnfoldingMap currentMap;

void setup()
{
  size(800, 600, P2D);

  // Create an array of maps, each with their own map tile provider.
  maps = new UnfoldingMap[5];
  maps[0] = new UnfoldingMap(this);
  maps[1] = new UnfoldingMap(this, new StamenMapProvider.TonerBackground());
  maps[2] = new UnfoldingMap(this, new StamenMapProvider.WaterColor());
  maps[3] = new UnfoldingMap(this, new Microsoft.AerialProvider());
  maps[4] = new UnfoldingMap(this, new EsriProvider.NatGeoWorldMap());

  // Set up initial zoom level and centre of all map views.
  Location cityLocation = new Location(51.5278, -0.1023);
  for (UnfoldingMap map : maps)
  {
    map.setZoomRange(5,14);    // Limit range of zoomable map scales
    map.zoomAndPanTo(10, cityLocation);
  }
  currentMap = maps[0];

  // This links the maps to mouse drag events so it can be panned.
  MapUtils.createDefaultEventDispatcher(this, maps);
}

void draw()
{
  currentMap.draw();
}

void keyPressed()
{
  // Change map depending on key pressed.
  if (key == '1')
  {
    currentMap = maps[0];
  }
  else if (key == '2')
  {
    currentMap = maps[1];
  }
  else if (key == '3')
  {
    currentMap = maps[2];
  }
  else if (key == '4')
  {
    currentMap = maps[3];
  }
  else if (key == '5')
  {
    currentMap = maps[4];
  }
}

*/

/* 
import de.fhpotsdam.unfolding.*;        // For the map variable type
import de.fhpotsdam.unfolding.geo.*;    // For location variable type
import de.fhpotsdam.unfolding.utils.*;  // For handling interaction.
import de.fhpotsdam.unfolding.marker.*; // For line marker.

UnfoldingMap map1,map2;

void setup()
{
  size(800, 400, P2D);      // Adding P2D to size() will increase rendering speed.

  // Set up the two map centre points and a line to join them.
  Location cityLocation = new Location(51.5278, -0.1023);    // Lat/long of City University
  Location parisLocation = new Location(48.8580, 2.2947);    // Eiffel Tower, Paris.
  SimpleLinesMarker line = new SimpleLinesMarker(cityLocation,parisLocation);

  // London map
  map1 = new UnfoldingMap(this, 50,50,300,300);  // Position of map x,y,width,height
  map1.zoomAndPanTo(15, cityLocation);
  map1.addMarker(line);
  map1.setZoomRange(5,16);

  // Paris map
  map2 = new UnfoldingMap(this,450,50,300,300);
  map2.zoomAndPanTo(15, parisLocation);
  map2.addMarker(line);
  map2.setZoomRange(5,16);

  // This links the map to mouse drag events so it can be zoomed and panned.
  MapUtils.createDefaultEventDispatcher(this, map1,map2);
}

void draw()
{
  background(240,211,177);
  map1.draw();    // Each map will be drawn in the location determined in setup.
  map2.draw();
}

*/

float[] births;
String[] labels;
int[] daysPerMonth;

void setup()
{
  size(600,600);

  births = new float[] {340297, 319235, 356786, 329809, 355437, 358251,
                        367934, 387798, 374711, 367354, 351832, 356111};
  daysPerMonth = new int[] {31,28,31,30,31,30,31,31,30,31,30,31};
  labels = new String[] {"J","F","M","A","M","J","J","A","S","O","N","D"};
}

void draw()
{
  background(245,235,222);

  float aCurrent = radians(-90);
  float cx = width/2;
  float cy = height/2;

  strokeWeight(3);
  stroke(245,235,222);
  for (int m = 0; m<12; m++)
  {
    float birth = births[m]/daysPerMonth[m];
    float diameter = map(birth,0,390000/31.0,0,width-10);

    // Draw pie slice.
    fill(186,101,91);
    float aMonth = radians(360*daysPerMonth[m]/365.0);
    arc(cx,cy, diameter,diameter, aCurrent,aCurrent+aMonth,PIE);
    aCurrent += aMonth;

    // Draw labels
    fill(72,66,54);
    textSize(24);
    textAlign(CENTER,CENTER);
    text(labels[m],cx+width*0.3*sin(HALF_PI-aCurrent+aMonth/2),
                   cy+width*0.3*cos(HALF_PI-aCurrent+aMonth/2));
  }

  // Draw concentric circles to ease comparison.
  noFill();
  stroke(0,50);
  strokeWeight(1.5);
  float diameter = width-10;
  ellipse(cx,cy,diameter/2,diameter/2);
  ellipse(cx,cy,diameter,diameter);

  noLoop();      // Draw just once.
}