color brown, beige, lgrey, dgrey, black; 

// size of the Circle. 
boolean FanC = random(1.0) < 0.50;
// triangle Rotation. 
boolean FanS = random(1.0) < 0.75; 

  void setup() {
  size(1024, 1024);
  rectMode(CENTER); 
  ellipseMode(CENTER); 
  
  brown = #653024;
  beige = #E7ceb5;
  lgrey = #D0d3d4;
  dgrey = #5B6770;
  black = #0E0F0F; 
  

  }
void draw() {

  //size of the circles
  //if (fanC) {
  //  noStroke(); 
  //  fill(); 
  //  circle(width/2, height/2, 1000);
  //} else {
  //  circle(width/2, height/2, 100);
  //}
  
  strokeWeight(2);
  stroke(brown); 
  fill(beige); 
  square(width/2, height/2, 1000);

    
 

}
