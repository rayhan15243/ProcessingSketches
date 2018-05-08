void drawPage3()
{
  color pageColour = color(8,173,71);

   // Draw page tabs
  fill(unselectedColour);
  rect(border,2,78,border-2);
  rect(border+80,2,78,border-2);
  fill(pageColour);
  rect(border+160,2,78,border-2);

  // Draw main part of page
  rect(20,20,width-40,height-40);
  fill(255);
  text("Page three",width*.5,height*.45);
}