String sentence = "Hello world! It is my greatest pleasure to invite you to look at this extroadinary code. Thank you very much";
String numbersequence = "1:2:3:4:5:6:7:8:9:0";
String [] words;
String [] numberString;
float [] numbers; 
float totalOfNumbers = 0;
int numberOfCharacters;
int fontSize = 24;
void settings() {
    size(300, 300);
}

void setup() {
    sentence = "Hello world! It is my greatest pleasure to invite you to look at this extroadinary code. Thank you very much";
printIn("Number of characters in the sentence is:" 
 //rest of program here
 
    words = sentence.split(" ");
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
  noLoop(); //draw doesn't need to happen for this exercise
  text()
}
