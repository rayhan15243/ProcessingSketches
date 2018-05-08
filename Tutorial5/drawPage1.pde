void drawPage1()
{
  color pageColour = color(40,30,30);

  // Draw page tabs
  fill(pageColour);
  rect(border,2,78,border-2);
  fill(unselectedColour);
  rect(border+80,2,78,border-2);
  rect(border+160,2,78,border-2);

  // Draw main part of page
  fill(pageColour);
  rect(border,border,width-2*border,height-2*border);
  fill(100,170,164);
  text("Page one",width*.5,height*.45);
}