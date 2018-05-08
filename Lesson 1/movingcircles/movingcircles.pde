PVector origin;

float offset;

void setup () {
   
  origin = new PVector(width/2,height/2);
  offset = 0;
  size(400,400);
  
}


void draw() {
   
background(#BFB9B9);
ellipse(origin.x+offset, origin.y+offset, 60, 60);
ellipse(origin.x+offset , origin.y-offset, 60, 60);
ellipse(origin.x-offset , origin.y+offset, 60, 60);
ellipse(origin.x-offset , origin.y-offset, 60, 60);
offset = offset + 1;


}