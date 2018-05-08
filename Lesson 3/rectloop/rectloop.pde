void setup () {
  
    background(#BCB6B8);
    size(950,500);
    
}

void draw () {
    
  for (int i=0; i<9; i++) {
  
      fill(0,255,0);
      rect(40 + i*100, 50, 80,80);  
      println(i);
  }
}