String displayText;

void setup() {
  size(400, 300);
   displayText = "Hello, world! ";
}

void draw() {
  background(254, 232, 134);
  fill(#080707);
  textSize(32);
  text(displayText, 50, 50, 350, 250);
}

void keyPressed() {
    
  displayText = displayText + key;
}