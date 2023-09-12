void setup() {
  size(1024, 1024);
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  println("This is a recreation of the painting 'Geometric Shapes' / 230828, by Saskia Freeke");
  // link to the painting: https://64.media.tumblr.com/9ddca62be4c80cf7d03c8155490228bc/9bef6c1cb634bc23-ab/s2048x3072/52e0d8ab3dc47f5f26d4bfd6d3aeef7ed73840b2.png
}

void draw() {
  background(360);
  noStroke();

  // Anchors for the triangles and lines
  PVector anchorCT = new PVector(width*0.50, height*1.00);
  PVector anchorBL = new PVector(width*0.25, height*0.75);
  PVector anchorBR = new PVector(width*0.75, height*0.75);
  
  // Sets the scale for all triangles
  float triangleScale = 0.375;

  //Single no fill triangle
  scale(triangleScale);
  noFill();
  stroke(120, 100, 0);
  strokeWeight(10);
  translate(1070, 267);
  triangle(anchorCT.x, anchorCT.y,
    anchorBL.x, anchorBL.y,
    anchorBR.x, anchorBR.y);
  resetMatrix();
  noStroke();

  //Bottom Right Purple Square
  fill(224, 44, 42);
  rect(718, 672, 100, 100); // Square 4 (bottom right)

//Lines
float lineScale = 0.380;
float lineWeight = 10; 
  //Black Lines
    //Black Line 1
    translate(520,180);
    scale (lineScale);
    stroke(120, 100, 0);
    strokeWeight(lineWeight);
    line(anchorCT.x, anchorCT.y, anchorBR.x, anchorBR.y);
    noStroke();
    resetMatrix();
    //Black Line 2
    translate(220,420);
    scale (lineScale);
    stroke(120, 100, 0);
    strokeWeight(lineWeight);
    line(anchorCT.x, anchorCT.y, anchorBR.x, anchorBR.y);
    noStroke();
    resetMatrix();
    //Black Line 3
    translate(416,420);
    scale (lineScale);
    stroke(120, 100, 0);
    strokeWeight(lineWeight);
    line(anchorCT.x, anchorCT.y, anchorBR.x, anchorBR.y);
    noStroke();
    resetMatrix();
    //Black LIne 4
    translate(220,615);
    scale (lineScale);
    stroke(120, 100, 0);
    strokeWeight(lineWeight);
    line(anchorCT.x, anchorCT.y, anchorBR.x, anchorBR.y);
    noStroke();
    resetMatrix();
    //Black Line 5
    translate(415,615);
    scale (lineScale);
    stroke(120, 100, 0);
    strokeWeight(lineWeight);
    line(anchorCT.x, anchorCT.y, anchorBR.x, anchorBR.y);
    noStroke();
    resetMatrix();
  //Purple Line Tilted
  translate(392,-846);
    scale (1);
    stroke(225, 43, 42);
    strokeWeight(3.5);
    line(anchorCT.x, anchorCT.y, anchorBL.x, anchorBL.y);
    noStroke();
    resetMatrix();
  //Purple Line Small 
  translate(525,360);
    scale (0.179);
    stroke(225, 43, 42);
    strokeWeight(23.00);
    line(anchorCT.x, anchorCT.y, anchorBR.x, anchorBR.y);
    noStroke();
    resetMatrix();
  //Blue Line 
  translate(350,-221);
    scale(lineScale);
    stroke(242, 65, 46);
    strokeWeight(lineWeight);
    line(anchorCT.x, anchorCT.y, anchorBR.x, anchorBR.y);
    noStroke();
    resetMatrix();
    
  //Straight line with three triangles #1
  translate(-9, -1); //Shifts the whole thing
  scale(triangleScale);
  noFill();
  stroke(120, 100, 0);
  strokeWeight(10);
  translate(923, 383);  //Left Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);   //Middle Left Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);  //Middle Right Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);  //Right Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  resetMatrix();
  noStroke();
  //Straight line with three triangles #2
  translate(66, 18); //Shifts the whole thing
  scale(triangleScale);
  noFill();
  stroke(120, 100, 0);
  strokeWeight(10);
  translate(726, 843);  //Left Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);   //Middle Left Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);  //Middle Right Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);  //Right Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  resetMatrix();
  noStroke();
  //Straight line with three triangles #3
  translate(64, 24); //Shifts the whole thing
  scale(triangleScale);
  noFill();
  stroke(120, 100, 0);
  strokeWeight(10);
  translate(726, 1345);  //Left Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);   //Middle Left Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);  //Middle Right Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);  //Right Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  resetMatrix();
  noStroke();
  //Straight line with three triangles #4
  translate(52, 63); //Shifts the whole thing
  scale(triangleScale);
  noFill();
  stroke(120, 100, 0);
  strokeWeight(10);
  translate(759, 1757);  //Left Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);   //Middle Left Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);  //Middle Right Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  translate(520, 0);  //Right Triangle
  triangle(anchorCT.x + 0, anchorCT.y + 0,
    anchorBL.x + 0, anchorBL.y + 0,
    anchorBR.x + 0, anchorBR.y + 0);
  resetMatrix();
  noStroke();

  //Black Triangles
  fill(120, 100, 0);
  rotate(TAU * 1.00);
  //Top Left Black Triangle
  scale(triangleScale);
  translate(50, -597);
  triangle(anchorCT.x, anchorCT.y,
    anchorBL.x, anchorBL.y,
    anchorBR.x, anchorBR.y);
  resetMatrix();
  //Top Right Black Triangle
  scale(triangleScale);
  translate(2091, -597);
  triangle(anchorCT.x, anchorCT.y,
    anchorBL.x, anchorBL.y,
    anchorBR.x, anchorBR.y);
  resetMatrix();
  //Bottom Left Black Triangle
  scale(triangleScale);
  translate(50, 1466);
  triangle(anchorCT.x, anchorCT.y,
    anchorBL.x, anchorBL.y,
    anchorBR.x, anchorBR.y);
  resetMatrix();
  //Bottom Right Black  Triangle)
  scale(triangleScale);
  translate(2091, 1466);
  triangle(anchorCT.x, anchorCT.y,
    anchorBL.x, anchorBL.y,
    anchorBR.x, anchorBR.y);
  resetMatrix();

  //Black Rectangle
  fill(120, 100, 0);
  rect(197, 529, 770, 195);

  //Medium no fill purple Triangle
  translate(255, 1010);
  noFill();
  rotate(TAU * 0.75);
  scale(0.180);
  strokeWeight(25); 
  stroke(224, 44, 42);
  triangle(anchorCT.x, anchorCT.y,
    anchorBL.x, anchorBL.y,
    anchorBR.x, anchorBR.y);
  resetMatrix();
  noStroke();

  //Small no fill purple Triangle
  translate(195, 483);
  noFill();
  rotate(TAU * 1.25);
  scale(0.090);
  strokeWeight(45);
  stroke(224, 44, 42);
  triangle(anchorCT.x, anchorCT.y,
    anchorBL.x, anchorBL.y,
    anchorBR.x, anchorBR.y);
  resetMatrix();
  noStroke();
  
  //Lavender triangle
  translate(335, 295);
  fill(257, 35, 71);
  rotate(TAU * 1.00);
  scale(0.200);
  triangle(anchorCT.x, anchorCT.y,
    anchorBL.x, anchorBL.y,
    anchorBR.x, anchorBR.y);
  resetMatrix();

  //Small no fill lavender square
  translate(115,500);
  noFill();
  scale(0.240);
  stroke(257, 35, 71);
  strokeWeight(17);
  rect(155, 236, 100, 100);
  resetMatrix();
  noStroke();

  //Black Squares Line
  fill(120, 100, 0);
  rect(105, 336, 100, 100); // Square 1 (left)
  rect(295, 336, 100, 100); // Square 2 (middle)
  rect(485, 336, 100, 100); // Square 3 (right)
  //Black Squares TOP (Can barely see)
  fill(120, 100, 0);
  rect(105, -47, 100, 100); // Square 1 (left)
  rect(295, -47, 100, 100); // Square 2 (middle)
  rect(485, -47, 100, 100); // Square 3 (right)
  
  //Purple Squares Quadrant 1
  translate(-48, 0);
  fill(224, 44, 42);
  rect(155, 236, 100, 100); // Top left
  rect(535, 236, 100, 100); // Top  right
  rect(155, 618, 100, 100); // Bottom left
  rect(535, 618, 100, 100); // Bottom right
  resetMatrix();
  //Purple Square Quadrant 2
  translate(0, 0);
  fill(224, 44, 42);
  rect(720, 300, 100, 100); // Top Right
  rect(335, 300, 100, 100); // Top Left
  rect(336, 672, 100, 100); // Bottom Left
  //Fourth square is at the beggining, since it must be underneath everything. rect(718, 672, 100, 100); // Bottom Right
  resetMatrix();
  
  //Purple Circles
  translate(560, -6);
  fill(224, 44, 42);
  ellipseMode(CENTER);
    //top circles
    ellipse(75, 235, 100, 100); // Circle 1 (left)
    ellipse(470, 235, 100, 100); // Circle 2 (right)
    //bottom circles
    ellipse(75, 620, 100, 100); // Circle 1 (left)
    ellipse(470, 620, 100, 100); // Circle 2 (right)
  resetMatrix();

  //Black Circle
  fill(120, 100, 0);
  ellipse(660, 737, 50, 50);

  //Small lavender circle
  fill(257, 35, 71);
  ellipse(591, 365, 28, 28);


  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if (frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
