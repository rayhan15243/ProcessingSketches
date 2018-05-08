int counter = 0;
PFont f;

void setup(){
  size(300,300);
  f = createFont("Arial", 16, true);
  textFont(f, 36);
  fill(200);
}

void draw(){
  background(254, 232, 134);
  fill(0);
  text(counter, width/2, height/2);

}


void mouseClicked() {
    
     // counter = counter + 1;
    counter = (int) random(100);
    
}