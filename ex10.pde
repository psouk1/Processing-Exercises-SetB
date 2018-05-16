String str = "Hello world! I hope you enjoy reading this as I did writing this.";
String numbersequence = "1:2:3:4:5:6:7:8:9:0";
String [] words;
String [] numberString;
float [] numbers; 
float totalOfNumbers = 0;
int numberOfCharacters;
int fontSize = 24;

void settings() {
    size(600, 600);
    
}

void setup() {
    str = "Hello world! I hope you enjoy reading this as I did writing this.";

 //rest of program here
 
    words = str.split(" ");
   
    numberString = numbersequence.split(":");
    numbers = new float [numberString.length];
    
    for (int i = 0; i < numberString.length; i++) {
       numbers[i] = float(numberString[i]);
     }
     for (int i = 0; i < numbers.length; i++) {
       totalOfNumbers += numbers[i]; 
     }
     textSize(fontSize);
}

void draw() {

  background(0);
  for (int i = 0; i < words.length; i++) {
    text(words.length, mouseX + 5, mouseY + i * fontSize);
  }
  text(totalOfNumbers, 50, 50); //draw doesn't need to happen for this exercise
  
}
