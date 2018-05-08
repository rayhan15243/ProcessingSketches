void setup () {
    size(600,450);
    background(255);
    float pi = 3.14159265;
    float halfWidth;
    halfWidth = width/2;
    float w = width*0.12;
    float h = height*0.15;
    float area = w*h;
    float mx =  pi*mouseX/width;
    float red   =  25;
    float green = 100;
    float blue  = 220;
    
    fill(red,green,blue);

    rect(50,50, 300,100);
    
}

void draw () {
  // rect(10,15,25,15);
  // rect(10,15,30,30);
  // ellipse(25,30, 30,30);
  // background(0);
  // fill(180,50,50);
  // ellipse(width/2, height/2, 30, 30);
      background(0);
      fill(180,50,50);
      ellipse(width/2,height/2,300,300);
      fill(50,50,180);
      rect(10,10, 100,100);
      rect(width-110,10, 100,100);
      rect(width-110,height-110, 100,100);
      rect(10,height-110, 100,100);
  
}