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

  // arcs on the left and the right
  ellipseMode(CENTER);
  rectMode(CENTER); 
  stroke(240, 100, 25);
  strokeWeight(50);
  noFill(); 
  //ellipse(anchorCT.x, anchorCT.y, width*0.69, width*0.69);
  arc(anchorCT.x, anchorCT.y, width*0.69, width*0.69, TAU * 0.4, TAU * 0.6);
  arc(anchorCT.x, anchorCT.y, width*0.69, width*0.69, TAU * 0.9, TAU * 1.1);
  arc(anchorCT.x, anchorCT.y, width*0.345, width*0.345, TAU * 0.65, TAU * 0.85);
  arc(anchorCT.x, anchorCT.y, width*0.345, width*0.345, TAU * 0.15, TAU * 0.35);
  
 

  //draw lines from center to the top corner
  stroke(50, 100, 100);
  strokeWeight(10);
  line(anchorCT.x, anchorCT.y, anchorTL.x, anchorTL.y);
  line(anchorCT.x, anchorCT.y, anchorTR.x, anchorTR.y);

  // draw a smaller box in the center
  ellipseMode(CENTER);
  noStroke();
  fill(240, 100, 75, 108);
  ellipse(anchorCT.x -80, anchorCT.y -50,300, 250);
  ellipse(anchorCT.x, anchorCT.y, 300, 250);
  ellipse(anchorCT.x +80, anchorCT.y +50, 300, 250);



  //draw lines from center to the bottom corners
  stroke(50, 100, 75);
  line (anchorCT.x, anchorCT.y, anchorBL.x, anchorBL.y);
  line(anchorCT.x, anchorCT.y, anchorBR.x, anchorBR.y);
}
