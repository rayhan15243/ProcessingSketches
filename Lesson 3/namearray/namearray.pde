ArrayList<String> names = new ArrayList(); 
// specify array list, type of array list, variable, new keyword for adding values from name into the array list
 
void setup()
{
  size(300,400);
  fill(0);
  textSize(22);
      
  names.add("Jon");
  names.add("George");
  names.add("Mike");
  names.add("Seb");
  names.add("Eva");
  names.add("Andy");
  names.add("Ross");
  names.add("Dympna");
  names.add("Simone");
  names.add("Tillman");
  names.add("Steph");
  names.add("Charlie");
  names.add("Jo");
}
 
void draw()
{
  background(255); 
  float yPos = 30;
   
  for (String name : names)
  {
    text(name,50,yPos);
    yPos = yPos+30;
  }
}
 
void keyPressed()
{
  if (key == 'j')
  {
    names.remove("Jon");
    names.remove("Jo");
  }
  else if (key == 's')
  {
    names.remove("Seb");
    names.remove("Simone");
    names.remove("Steph");
  }
  
  else if (key=='J' && !names.contains("Jo")) {
      
    names.add("Jon");
    names.add("Jo");
  }
  
  else if (key=='S' && !names.contains("S")) {
    
    names.add("Seb");
    names.add("Simone");
    names.add("Steph");
  }
}