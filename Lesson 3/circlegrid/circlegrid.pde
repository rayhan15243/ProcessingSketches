void setup()
{
  size(400,400);
  noStroke();
  fill(180,50, 50, 100);
}
 
void draw()
{
  background(255);
 
  for (int row=0; row<10; row = row+1)
  {
     
    for (int col=0; col<10; col = col+1)
    {
      if (col==1) {
       
        fill(0,0,255);
        ellipse(20 + col*40, 20 + row*40,30,30);
      }
      
      else if (row==6) {
         
        fill(0,0,255);
        ellipse(20 + col*40, 20 + row*40,30,30);
      }
      else {
        
        fill(180,50, 50, 100);
        ellipse(20 + col*40, 20 + row*40,30,30);
      }  
    }
  } 
  
 
}