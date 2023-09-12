void setup() {
  size(1024, 1024);
  rectMode(CENTER);
  

}

void draw(){
  background(#FFBF00); 
  fill (255, 64); 
  translate( width/2 , height/2); 
  
  // for visualizing center axis
  //stroke(0); 
  //line(-9999, 0, 9999, 0); 
  //line(0, -9999, 0, 9999);
  
  // sunburst background
  float shrinkAmunt = 1.14; 
  float spinAmount = TAU * 0.31; 
  PVector translateAmount = new PVector(0, 0); 
  float shapeLenght = 2760; 
  
  noStroke(); 
  rotate(TAU * - 0.15); // rotate the first rect to the top 
  rect (width/4, 0, shapeLenght, 50);
 
  rotate(spinAmount); 
  scale (shrinkAmunt);
  translate(translateAmount.x, translateAmount.y); 
  rect(width/4, 0, shapeLenght, 50); 
  
  rotate(spinAmount); 
  scale (shrinkAmunt);
  translate(translateAmount.x, translateAmount.y); 
  rect(width/4, 0, shapeLenght, 50); 
  
  rotate(spinAmount); 
  scale (shrinkAmunt);
  translate(translateAmount.x, translateAmount.y); 
  rect(width/4, 0, shapeLenght, 50); 
  
  rotate(spinAmount); 
  scale (shrinkAmunt);
  translate(translateAmount.x, translateAmount.y); 
  rect(width/4, 0, shapeLenght, 50); 
  
  rotate(spinAmount); 
  scale (shrinkAmunt);
  translate(translateAmount.x, translateAmount.y); 
  rect(width/4, 0, shapeLenght, 50); 
  
  rotate(spinAmount); 
  scale (shrinkAmunt);
  translate(translateAmount.x, translateAmount.y); 
  rect(width/4, 0, shapeLenght, 50); 
  
  rotate(spinAmount); 
  scale (shrinkAmunt);
  translate(translateAmount.x, translateAmount.y); 
  rect(width/4, 0, shapeLenght, 50); 
  
  rotate(spinAmount); 
  scale (shrinkAmunt);
  translate(translateAmount.x, translateAmount.y); 
  rect(width/4, 0, shapeLenght, 50); 
  
  rotate(spinAmount); 
  scale (shrinkAmunt);
  translate(translateAmount.x, translateAmount.y); 
  rect(width/4, 0, shapeLenght, 50); 
}
  
