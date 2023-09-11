void setup() {
  size (800, 800);  
 
}
void draw() {
  background(180);
  
  
  translate (140, 37);
  scale(0.7, 2.4);
  rotate(TAU * 1.076);
  translate(0,0); 
  rect(0,0,220,220); 
  pushMatrix(); //Matrix "1" - our wraped matrix
  
  resetMatrix(); 
  translate(312,301); 
  rotate(TAU /8.0);
  rect (23, 0, 100, 100); 
  popMatrix(); 
  
  rect(392,-199,220,220); 
 
}
