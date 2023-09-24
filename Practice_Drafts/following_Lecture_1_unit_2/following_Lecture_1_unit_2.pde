// declare global variables
int age;
color paper, darkInk;
float circleSize;
PVector circlePosition;
String name = "ugabuga"; 
PFont ComicSans;

void setup(){
  size(800,800); 
  
  //glo0bal variable initialization  initialization

  paper = #ffeedd;
  circleSize = 200;
  
  ComicSans = loadFont("ComicSansMS-Italic-28.vlw"); 
 

}


void draw() {
  background(paper);
  circlePosition = circlePosition = new PVector (width * 0.25, height * 0.25);
  age = 69;
  darkInk = #223344;
  
  //draw circle with  the current age in it
  fill(darkInk);
  noStroke();
  circle(circlePosition.x, circlePosition.y, circleSize);
  fill(paper); 
  textFont(ComicSans);
  textAlign(CENTER, CENTER); 
  text (name + " is " + age, circlePosition.x, circlePosition.y); 
  
  age += 2; 
  circlePosition.x += width * .15; 
  circlePosition.y += width * .15;
  darkInk = #334455; 
  
  //draw circle with  the current age in it
  fill(darkInk);
  circle(circlePosition.x, circlePosition.y, circleSize);
  fill(paper);  
  textAlign(CENTER, CENTER); 
  text (name + " is " + age, circlePosition.x, circlePosition.y); 
  
   age += 2; 
  circlePosition.x += width * .15; 
  circlePosition.y += width * .15;
  darkInk = #445566; 
  
  //draw circle with  the current age in it
  fill(darkInk);
  circle(circlePosition.x, circlePosition.y, circleSize);
  fill(paper);  
  textAlign(CENTER, CENTER); 
  text (name + " is " + age, circlePosition.x, circlePosition.y); 
}
