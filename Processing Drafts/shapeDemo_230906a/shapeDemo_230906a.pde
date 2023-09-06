// runs at the start
void setup () {
  size (1024, 1024);
  colorMode(HSB, 360, 100, 100); 
}

// runs once every frame
void draw () {
  background (180);

  // rgb triplet
  stroke(134, 222, 196);



  PVector anchorTL = new PVector(width*0.25, height*0.25);
  PVector anchorTR = new PVector(width*0.75, height*0.25);
  PVector anchorCT = new PVector(width*0.50, height*0.48);
  PVector anchorBL = new PVector(width*0.25, height*0.75);
  PVector anchorBR = new PVector(width*0.75, height*0.75);

  // draw a box in the center
  rectMode(CORNERS);
  stroke(240, 100, 25);
  strokeWeight(5);
  noFill(); 
  rect(anchorTL.x, anchorTL.y, anchorBR.x, anchorBR.y);

  //draw lines from center to the top corner
  stroke(50, 100, 100);
  strokeWeight(10);
  line(anchorCT.x, anchorCT.y, anchorTL.x, anchorTL.y);
  line(anchorCT.x, anchorCT.y, anchorTR.x, anchorTR.y);

  // draw a smaller box in the center
  rectMode(CENTER);
  noStroke();
  fill(240, 100, 75, 108);
  rect(anchorCT.x -10, anchorCT.y -10,250, 250);
  rect(anchorCT.x, anchorCT.y, 250, 250);
  rect(anchorCT.x +10, anchorCT.y +10, 250, 250);



  //draw lines from center to the bottom corners
  stroke(50, 100, 75);
  line (anchorCT.x, anchorCT.y, anchorBL.x, anchorBL.y);
  line(anchorCT.x, anchorCT.y, anchorBR.x, anchorBR.y);
}
