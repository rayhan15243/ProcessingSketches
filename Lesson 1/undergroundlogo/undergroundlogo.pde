void setup () {
    size(400,300);
    
}

void draw() {
  
 
  fill(255,0,0); // WHITE
  //ellipse(200,125,230,230);
  background(#ffffff);
   ellipse(mouseX,mouseY,230,230);
   fill(#FFFCFC); // RED
  // ellipse(200,125,160,160);
  ellipse(mouseX,mouseY,160,160);
  fill(#0428D1); // BLUE
  // rect(35,100,330,45);

   rect(mouseX-190,mouseY-10,370,45);
   
  textSize(32);
  fill(#FFFCFC); // WHITE TEXT
  
 text("UNDERGROUND", mouseX-125, mouseY+25); 
// minus moves to the left and up
// + moves right then down

  


  
  

 
    
}