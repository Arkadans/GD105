void setup() {
  size(1000, 1000);
  rectMode(CENTER);
  ellipseMode(CENTER);
  println("This is the eye of the universe"); 
  
}

void draw() {
  background(0);
  // For loops in tandem with repeated transormations.
  noFill();
  translate(width/2, height/2);

  //Blue Arc
  strokeWeight(0.8);
  stroke(#25DDE5); 
  for (float y = 0.0; y < 24; y += 1.0) {
    translate(0, 0);
    square(0, 0, 610);
    rotate (TAU / 24 + frameCount * 0.0001);
  }
  // Purple Arc
  strokeWeight(0.6); 
  stroke(#DA00FC);  
  for (float y = 0.0; y < 28; y += 1.0) {
    translate(0, 0);
    triangle(37, 100, 200, 200, 300, 0);
    rotate (TAU / 28 + frameCount * 0.0002);
  }
  strokeWeight(0.5);
  //Green Arc
  stroke(#B4DB42); 
  for (float y = 0.0; y < 48; y += 1.0) {
    translate(0, 0);
    square(0, 26, 112);
    rotate (TAU / 48 + frameCount * 0.0001);
  }
  strokeWeight(2.00);
  //Center
  stroke(#FF0A60); 
  for (float y = 0.0; y < 5; y += 1.0) {
    translate(0, 0);
    circle(0, -8, -26);
    rotate (TAU / 5 + frameCount * 0.0300);
  }
}
