void drawPage2()
{
  color pageColour = color(11,170,236);

  // Draw page tabs
  fill(unselectedColour);
  rect(border,2,78,border-2);
  fill(pageColour);
  rect(border+80,2,78,border-2);
  fill(unselectedColour);
  rect(border+160,2,78,border-2);

  // Draw main part of page
  fill(pageColour);
  rect(20,20,width-40,height-40);
  fill(255);
  text("Page two",width*.5,height*.45);
}