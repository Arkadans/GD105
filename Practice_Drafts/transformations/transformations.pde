void setup() {
  size (800, 800);  
 
}
void draw() {
  background(180); 
  translate (50, 50);
  
  stroke(255, 0, 0); 
  // draw our origin axis
  line(-9999, 0, 9999, 0); // y = 0 
  line(0, -9999, 0, 9999); // x = 0
  
  scale(1.0, 1.0);
  rotate(TAU * 1.000);
  
  rect (0, 0, 220, 220); 
 
  translate(50, 250); 
  stroke(0, 255, 0); 
   // draw our origin axis
  line(-9999, 0, 9999, 0); // y = 0 
  line(0, -9999, 0, 9999); // x = 0
  rect (0, 0, 220, 220); 
  
  translate(50, 250); 
  stroke(0, 0, 255); 
   // draw our origin axis
  line(-9999, 0, 9999, 0); // y = 0 
  line(0, -9999, 0, 9999); // x = 0
  rect (0, 0, 220, 220); 
}
