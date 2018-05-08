// String moduleName = "Coding bootcamp";
// println(moduleName);
// println(moduleName.length());



String moduleName = "Coding bootcamp";
 
println(moduleName.toUpperCase());  // Convert text to upper-case
println(moduleName.substring(7));   // Extract part of string from 8th character onwards
   
if (moduleName.contains("boot"))
{
  println("Shoe related word found!");
}
   
if (moduleName.equals("CODING BOOTCAMP"))
{
  println("Upper-case match found!");
}
   
if (moduleName.equalsIgnoreCase("CODING BOOTCAMP"))
{
  println("Case insensitive match found!");
}