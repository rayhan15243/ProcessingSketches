
PVector screenPos;
// width / 2
// height / 2

void setup () {
 
  size(400,400);
  screenPos = new PVector(170,150);
}

void draw () {
    
   
    rect(screenPos.x,screenPos.y,60,60);
}


void keyPressed () {
    if (key=='w') {
       
      if (screenPos.y > 0 ) {  
      
       screenPos.y = screenPos.y-1;
      
      }    
      }
    
    if (key=='s') {
    
      if (screenPos.y < height-60) {
     
        screenPos.y = screenPos.y + 1;
    
    }
    }
    
    
    
    if (key=='a') {
       
      if (screenPos.x > 0 )  {
        screenPos.x = screenPos.x - 1;
    } 
    }
    
    if (key=='d') {
        
      if (screenPos.x <width-60) {
        screenPos.x = screenPos.x + 1;
    }
    }
  
    
}