int r;

void setup () {
    size(400,400);
    r=0;
    
}
void draw(){
    background(100);
    fill(r, 0, 0);
    rect(100, 100, 60, 60);
}


void keyPressed() {
    if(key=='r') {
        
      r = r+10;
    } 
    else if(key=='b'){
        r = r-10;
    }
    
    if (r<0 || r> 255 ) {
        r = 0;
    }
}