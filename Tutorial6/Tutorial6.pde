// Simple sketch to illustrate preattentive processing by randomly
// displaying digits on screen firstly requiring sequential visual
// processing, then on pressing space, via pre-attentive processing.
// Example inspired by Ware (2012), Figure 5.9.
// Jo Wood, 9th March, 2014.
/*
String[] digits;               // Stores the collection of random digits.
ArrayList<Integer> dPositions; // Highlighted digit positions.
boolean useColour;             // Determines if colour is used in symbolisation.
boolean only3s;                // Determines if only 3s are displayed
float characterHeight;         // Size of characters.
float characterWidth;

void setup()
{
  size(400, 250);

  textSize(22);
  characterWidth  = 14;
  characterHeight = 30;
  createRandomDigits();
}

void draw()
{
  background(255);
  fill(120);
  for (int row=0; row<8; row++)
  {
    for (int col=0; col<25; col++)
    {
      text(digits[row*25+col], 25+col*characterWidth, 25+row*characterHeight);
    }
  }

  if (useColour)
  {
    fill(220, 20, 20);
    for (int pos : dPositions)
    {
      text(digits[pos], 25+pos%25*characterWidth, 25+(int)(pos/25)*characterHeight);
    }
  }

  noLoop();
} 

void keyPressed()
{
  if (key == ' ')
  {
    useColour = !useColour;
    loop();
  }
  else if (key == '3')
  {
    only3s = !only3s;
    createRandomDigits();
    loop();
  }
  else
  {
    createRandomDigits();
    loop();
  }
}

// Creates a set of 200 random digits.
void createRandomDigits()
{
  digits = new String[200];
  dPositions = new ArrayList<Integer>();

  for (int i=0; i<digits.length; i++)
  {
    int digit = int(random(0, 9));
    if (digit == 3) digit = int(random(0, 9));

    if (digit == 3)
    {
      dPositions.add(i);
    }
    if (only3s)
    {
      digits[i] = "3";
    }
    else
    {
      digits[i] = str(digit);
    }
  }
}
*/

// Simple sketch to draw a triangle at the mouse location.
// Jo Wood, 11th February 2017.
/*
private float leftOffset, bottomOffset;

void setup()
{
  size(400,250);
  fill(168,212,176);
  stroke(120);
  strokeWeight(3);

  // Calculate relative positions of bottom corner of triangle
  leftOffset   = cos(radians(30));
  bottomOffset = sin(radians(30));
}

void draw()
{
  background(255);
  drawTriangle(mouseX,mouseY,map(mouseX,0,width,5,100));
}

// Method to draw a triangle at the given x,y position with the given radius.
void drawTriangle(float x, float y, float radius)
{
  beginShape();
   vertex(x - radius*leftOffset, y + radius*bottomOffset);
   vertex(x + radius*leftOffset, y + radius*bottomOffset);
   vertex(x, y - radius);
  endShape(CLOSE);
}
*/

/* void setup()
{
  size(600, 300);
}

void draw()
{
  background(255);
  stroke(0,0,250);
  strokeWeight(2);
  fill(80,0,0);

  for (int i=1; i<=20; i++)
  {
    blurCircle(random(40,width-40), random(40,height-40),20, i);
  }

  noLoop();
}


// Draws a blurred rectangle. Parameters the same as the rect() command but with
// an extra parameter blur that ranges between 1-20 to control the degree of blurring.
void blurRect(float x, float y, float w, float h, int blur)
{
  blur = min(20,max(1,blur));  // Ensure blur is in range 1-20
  PGraphics pg = createGraphics(round(w+6*blur),round(h+6*blur));
  pg.beginDraw();
  pg.style(g.getStyle());
  pg.translate(3*blur,3*blur);
  pg.rect(0,0,w,h);
  pg.filter(BLUR,blur);
  pg.endDraw();

  image(pg,x-3*blur,y-3*blur);
}

// Draws a blurred reccircletangle. Parameters the same as the ellipse() command but
// with only a single diameter value and an extra parameter blur parameter.
void blurCircle(float x, float y, float diam, int blur)
{
  blur = min(20,max(1,blur));  // Ensure blur is in range 1-20
  PGraphics pg = createGraphics(round(diam+6*blur),round(diam+6*blur));
  pg.beginDraw();
  pg.style(g.getStyle());
  pg.translate(3*blur+diam/2,3*blur+diam/2);
  pg.ellipse(0,0,diam,diam);
  pg.filter(BLUR,blur);
  pg.endDraw();

  image(pg,x-diam/2-3*blur,y-diam/2-3*blur);
}

// Draws a blurred line. Parameters the same as the line() command but with
// an extra parameter blur that ranges between 1-20 to control the degree of blurring.
void blurLine(float x1, float y1, float x2, float y2, int blur)
{
  blur = min(20,max(1,blur));  // Ensure blur is in range 1-20
  float minX = min(x1,x2);
  float maxX = max(x1,x2);
  float minY = min(y1,y2);
  float maxY = max(y1,y2);

  PGraphics pg = createGraphics(round(maxX-minX+6*blur),round(maxY-minY+6*blur));
  pg.beginDraw();
  pg.style(g.getStyle());
  pg.translate(3*blur,3*blur);
  pg.line(x1-minX,y1-minY, x2-minX,y2-minY);
  pg.filter(BLUR,blur);
  pg.endDraw();

  image(pg,minX-3*blur,minY-3*blur);
}

*/

// Sketch to show font metrics.
// Jo Wood, 11th February, 2017.
/*
float x,y;      // Used to store anchor point;
String myText;  // Text to display.

void setup()
{
  size(800,200);

  // Loading and setting font can be combined in a single line.

  PFont myFont = loadFont("GillSans-36.vlw");
     textFont(myFont);

  myText = "The quick brown fox jumped.";
  x = 10;
  y = height/2;
}

void draw()
{
  background(255);
  fill(0);            // Fill sets the colour of the text.
  noStroke();
  text(myText, x,y);

  // Show various font metrics
  float myTextWidth = textWidth(myText);
  float ascent = textAscent();
  float descent = textDescent();

  fill(183,84,180);
  ellipse(x,y,8,8);    // Anchor

  stroke(183,84,180);  // Baseline
  line(x,y,x+myTextWidth,y);

  stroke(255,135,0);   // Descent
  line(x,y+descent,x+myTextWidth,y+descent);

  stroke(33,145,200);  // Ascent
  line(x,y-ascent,x+myTextWidth,y-ascent);

  noLoop();      // Draw once only.
}
*/

// Sketch to show text displayed in a block
// Jo Wood, 11th February, 2017

String myText;  // Text to display.
int textSize;
float margin;

void setup()
{
  size(600,400);
  textSize = 24;
  margin   = width*0.18;
  textFont(createFont("GillSans",textSize));

  myText = "I do believe that there are some universal cognitive " +
           "tasks that are deep and profound - indeed, so deep and " +
           "profound that it is worthwhile to understand them in " +
           "order to design our displays in accord with those tasks.";
}

void draw()
{
  background(250,244,222);
  fill(40);                    // Fill sets the colour of the text.
  textSize(textSize);
  textLeading(textSize*1.3);  // Gap in pixels between lines.
  text(myText, margin,margin,width-2*margin,height-2*margin);

  noLoop();
}