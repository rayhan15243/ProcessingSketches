import org.gicentre.geomap.*;
GeoMap geoMap; 

int id;
String borough;
String crimeRate;
 
void setup()
{
  size(800, 500);
 
  geoMap = new GeoMap(50,60,700,425,this);
  geoMap.readFile("londonBoroughs");
 
}
 
void draw()
{
  
  background(#F0F0F5);  // Background colour
  stroke(0,150);        // Boundary colour
  fill(#808080);        // Land colour
  geoMap.draw();        // Draw the entire map.
  
  fill(100);
  String subtitle = "Crime rates as of August 2015";
  textSize(12);
  text(subtitle, 10, height-10);
  
  String key = " Key: \n High                     Red \n Above Average     Orange \n Average                Yellow \n Below Average      Blue ";
  textSize(12);
  text(key,620,height-90);
  
  
  boroughCrimeFill();
  
  fill(#000000);
  String title = " Crime rates in London Boroughs";
  textSize(25);
  text(title,210,40);
  
}

// red high
// orange - above average
// yellow - average
// light blue - below average
// purple - low or no crime 

void boroughCrimeFill () {
  
  id = geoMap.getID(mouseX, mouseY);
  
  // Bromley
  if (id==1)
  {
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
  } 
  // Richmond upon Thames
  else if (id==2) {
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
   } 
  //   Hillingdon 
  else if (id==3) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
  } 
  // Havering
  else if (id==4) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
  } 
  // Kingston upon Thames
  else if (id==5) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }
  // Sutton 
  else if (id==6) {
      
    fill(#14e3d3);
    geoMap.draw(id);
    textDisplay();
    
  }
  // Hounslow 
  else if (id==7) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Merton 
  else if (id==8) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Wandsworth
  else if (id==9) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Croydon
  else if (id==10) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Lamberth
  else if (id==11) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Southwark
  else if (id==12) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }   
  // Lewisham
  else if (id==13) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Greenwich
  else if (id==14) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Ealing
  else if (id==15) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Hammersmith and Fulham
  else if (id==16) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Brent
  else if (id==17) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Harrow
  else if (id==18) {
      
    fill(#14e3d3);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Barnet
  else if (id==19) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Islington 
  else if (id==20) {
      
    fill(#FFC04C);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Hackney 
  else if (id==21) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Newham
  else if (id==22) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Barking and Dagenham
  else if (id==23) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
  }  
  // Haringey
  else if (id==24) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Enfield 
  else if (id==25) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Waltham Forest
  else if (id==26) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Redbridge
  else if (id==27) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Bexley
  else if (id==28) {
      
    fill(#14e3d3);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Kensington and Chelsea
  else if (id==29) {
      
    fill(#FFC04C);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Westiminster 
  else if (id==30) {
      
    fill(#ff1919);
    geoMap.draw(id);
    textDisplay();
    
  }  
  // Camden
  else if (id==31) {
      
    fill(#FFC04C);
    geoMap.draw(id);
    textDisplay();
  }  
  // Tower Hamlets
  else if (id==32) {
      
    fill(#ffff1a);
    geoMap.draw(id);
    textDisplay();
  } 
        
} 

void textDisplay() {
    borough = geoMap.getAttributes().getString(id, 2);
    crimeRate = geoMap.getAttributes().getString(id, 3);
    fill(0);
    textSize(15);
    text(borough, 10,40);
    text(crimeRate, 10, 40+15); 
}