/* import org.gicentre.utils.move.*;    // For ZoomPan class.

// Sketch to allow zooming and panning of a circle.
// Jo Wood, 23rd February, 2017

ZoomPan zoomer;    // To allow zooming and panning.

void setup()
{
  size(400,250);
  zoomer = new ZoomPan(this);  // Initialise the zoomer.
}

void draw()
{
  background(255);

  // This will rescale the drawing as user zooms and pans.
  zoomer.transform();

  // Coloured interior and thick grey border.
  fill(168,212,176);
  strokeWeight(10/sqrt((float)(zoomer.getZoomScale())));
  stroke(120);

  // Circle in middle of screen.
  ellipse(width/2,height/2,90,90);
}

*/

/* import org.gicentre.utils.move.*;    // For ZoomPan class.

// Sketch to allow zooming and panning of a circle and
// simple interaction to change its appearance.
// Jo Wood, 23rd February, 2017

ZoomPan zoomer;      // To allow zooming and panning.
color circleColour;  // Stores circle colour.
boolean showBorder;  // Determines if circle border is shown.

void setup()
{
  size(400, 250);
  zoomer = new ZoomPan(this);  // Initialise the zoomer.
  circleColour = color(168, 212, 176);
  showBorder = true;
}

void draw()
{
  background(255);

  // This will rescale the drawing as user zooms and pans.
  zoomer.transform();

  // Coloured interior and thick grey border.
  fill(circleColour);
  strokeWeight(10);

  if (showBorder)
  {
    stroke(120);
  }
  else
  {
    noStroke();
  }

  // Circle in middle of screen.
  ellipse(width/2, height/2, 90, 90);
}

// This method is only called if the user pressed a key.
void keyPressed()
{
  if (key == '1')
  {
    circleColour=color(168, 212, 176);  // Pale green
  }
  else if (key == '2')
  {
    circleColour=color(155, 198, 207);  // Pale blue
  }
  else if (key == '3')
  {
    circleColour=color(195, 198, 149);  // Pale brown
  }
  else if (key == 'r')
  {
    // Reset zoom/pan position if the R key is pressed.
    zoomer.reset();
  }
}

// This method is only called if the user clicks with the mouse.
void mouseClicked()
{
  // Find the orignal mouse position independently of zooming.
  PVector mousePos = zoomer.getMouseCoord();

  // If the user has clicked within the circle, toggle its border.
  if (dist(width/2, height/2, mousePos.x, mousePos.y) < 45)
  {
    showBorder = !showBorder;
  }
}

*/

// Sketch to show how different 'pages' can be displayed through user interaction.
// Jo Wood, 23rd February, 2017

int pageNum;      // Current page to display.
int border = 20;  // Border around each page.
color unselectedColour;

void setup()
{
  size(400, 250);
  textSize(48);
  textAlign(CENTER, CENTER);
  noStroke();
  unselectedColour = color(180);
  pageNum = 1;
}

// Selects which page to draw depending on pageNum
void draw()
{
  background(255);

  if (pageNum == 1)
  {
    drawPage1();
  }
  else if (pageNum == 2)
  {
    drawPage2();
  }
  else if (pageNum == 3)
  {
    drawPage3();
  }
}

// Moves between pages depending on which tab is pressed
void mousePressed()
{
  if (mouseY < border)    // All three buttons are at the top so test mouseY once.
  {
    if ((mouseX > border) && (mouseX < border+80))
    {
      pageNum = 1;
    }
    else if ((mouseX > border+80) && (mouseX < border+160))
    {
      pageNum = 2;
    }
    else if ((mouseX > border+160) && (mouseX < border+240))
    {
      pageNum=3;
    }
  }
}