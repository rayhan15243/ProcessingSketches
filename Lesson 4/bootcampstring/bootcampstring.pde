void setup () {
    String message = "Hello from Friday bootcamp";
    message = "Bootcamp week one is nearly over";
    println(message);
    println(message.toUpperCase());
    println(message.toLowerCase());
    println(message.length());
    println(message.charAt(4));
    
    if(message.contains("day")) {
      
        println("Day found");
    
    } else {
        
        println("no match");
    }
}