void setup() {
  size(1000, 1000);
  rectMode(CENTER);
}

void draw() {
  background(255);

  //int i = 0;
  //while (i < 320) {
  //line(120, i, 320, i);
  //i = i + 20;

  //}

  //float gridStep = 0.025;
  //fill(1);
  //square(width/2, height/2, width*0.50);
  //noFill();
  //stroke(255);
  
  // For loops in tandem with repeated transormations. 

  translate(width/2, height/2); 
  circle(0, 0, 730); 
  circle(0, 0, 580); 
  for (float y = 0; y < 103; y += 1) {
    translate(0, 0); 
    line(300, 0, 350, 50); 
    rotate (TAU / 103); 
  }
}
