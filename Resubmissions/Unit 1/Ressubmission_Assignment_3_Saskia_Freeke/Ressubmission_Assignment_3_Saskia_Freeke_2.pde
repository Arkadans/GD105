// On this Resubmission I actually used the original code and started editing it/deleting stuff.
// I couldn't shrink the size of the code by too much, but I think the code is much easier to understand and to use now.
color black, purple, lavender, blue;
void setup() {
  size(1000, 1000);
  println("This is a recreation of the painting 'Geometric Shapes' / 230828, by Saskia Freeke");
  // link to the painting: https://64.media.tumblr.com/9ddca62be4c80cf7d03c8155490228bc/9bef6c1cb634bc23-ab/s2048x3072/52e0d8ab3dc47f5f26d4bfd6d3aeef7ed73840b2.png
  //Colors
  black = #000000;
  purple = #3c486b;
  lavender = #9376e0;
  blue = #282d90;
}

void draw() {
  background(255);

  //Black Rectangle
  noStroke();
  fill(black);
  rect(0, 426, 561, 194);

  //Bottom Right Purple Square - this square is here because it's yunderneath everything.
  noStroke();
  fill(purple);
  square(625, 617, 100);

  // BlackLines
  strokeWeight(4);
  stroke(black);
  translate(-31, 0); // Moves lines 1~4
  PVector lineB1 = new PVector (412, 792); // Starting Point 1
  PVector lineT1 = new PVector (502, 702); // End Point 1
  PVector lineB2 = new PVector (600, 979); // Starting POint 1
  PVector lineT2 = new PVector (690, 882); // Start POint 2
  
  //Top Black Line 1
  line(lineB1.x, lineB1.y, lineT1.x, lineT1.y);
  //Top Black Line 2
  line(lineB2.x, lineB1.y, lineT2.x, lineT1.y);
  //Bottom Black LIne 3
  line(lineB1.x, lineB2.y, lineT1.x, lineT2.y);
  //Bottom Black Line 4
  line(lineB2.x, lineB2.y, lineT2.x, lineT2.y);
  resetMatrix();
  
  //Off-set Black Line or top right black line.
  line(700, 555, 790, 465);
  
  //Purple Line Tilted
  translate(24, 0);
  stroke(purple);
  line(708, 0, 882, 174);
  resetMatrix();
  
  //Purple Line Small
  translate(-16, 13);
  line(605, 525, 650, 480);
  resetMatrix();
  
  //Blue Line
  translate(-23, -13);
  stroke(blue);
  line(535, 170, 625, 80);
  resetMatrix();

  //Anchors for the black triangles (Fill and noFill Triangles)
  PVector originT = new PVector(0, 0); // Triangle Origin
  PVector topLT = new PVector(100, -100); // Top Left Triangle
  PVector topRT  = new PVector(-100, -100); // Top Right Triangle
  
  noFill();
  stroke(black);
  strokeWeight(4);  
  //Single Triangle, it's underneath the other triangles.
  translate(555, 492);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  resetMatrix();

  //Straight line with three triangles #1 (going left to right)
  noFill();
  stroke(black);
  strokeWeight(4);  
  //Triangle 1
  float triangleX = 492; // moves the lines forwards/backwards
  translate(triangleX, 524); // Move all triangles  on line #1
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);  
  //Triangle 2
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);  
  //Triangle 3
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);  
  //Triangle 4
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  resetMatrix();
  
  //Straight line with three triangles #2 (going left to right)
  //Triangle 1
  translate(triangleX, 714); // Move all triangles  on line #2
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  //Triangle 2
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  //Triangle 3
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  //Triangle 4
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  resetMatrix();
  
  //Straight line with three triangles #3 (going left to right)
  //Triangle 1
  translate(triangleX, 895); // Move all triangles  on line #3
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  //Triangle 2
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  //Triangle 3
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  //Triangle 4
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  resetMatrix();
  
  //Straight line with three triangles #4 (going left to right)
  //Triangle 1
  translate(triangleX, 1085); // Move all triangles  on line #4
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  //Triangle 2
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  //Triangle 3
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  //Triangle 4
  translate(200, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  resetMatrix();

  //Black Triangles with Fill
  fill(black);
  noStroke();
  //Top Left Black Triangle
  translate(236, 162); // Also move all triangles
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  
  //Top Right Black Triangle
  translate(750, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  
  //Bottom Left Black Triangle
  translate(-778, 750);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  
  //Bottom Right Black  Triangle)
  translate(752, 0);
  triangle(originT.x, originT.y, topRT.x, topRT.y, topLT.x, topLT.y);
  resetMatrix();

  //Medium no fill purple Triangle - Facing East
  noFill();
  strokeWeight(4);
  stroke(purple);
  translate(400, 900); // Moves the Triangle
  triangle(0, 0, -50, 50, -50, -50);
  resetMatrix();
  
  //Small no fill purple Triangle - Facing West
  translate(66, 522); // Moves the Triangle
  triangle(0, 0, 25, -25, 25, 25);
  resetMatrix();
  
  //Lavender triangle
  noStroke();
  fill(lavender);
  translate(400, 498); // Moves the Triangle
  triangle(0, 0, 50, -50, -50, -50);
  resetMatrix();

  //Squares
  //Small no fill lavender square
  noFill();
  stroke(lavender);
  strokeWeight(3.5);
  square(106, 539, 25);
  
  //Black Squares Line
  noStroke();
  fill(black);
  translate(-29, 10); // Moves All the squares Including the purple ones
  float squareS = 100; // Square Size
  float bbsquaresY = 280; // Black Bottom Squares Y
  float btsquaresY = -108; // Black top Squares Y
  float bsquare1x = 50; // Black Square 1 Xs
  float bsquare2x = 240; //Black  Square 2 Xs
  float bsquare3x = 430; // Black Square 3 Xs
  square(bsquare1x, bbsquaresY, squareS);  // Bottom Square 1
  square(bsquare2x, bbsquaresY, squareS);  // Bottom Square 2
  square(bsquare3x, bbsquaresY, squareS);  // Bottom Square 3
  square(bsquare1x, btsquaresY, squareS);  // Top Square 1
  square(bsquare2x, btsquaresY, squareS);  // Top Square 2
  square(bsquare3x, btsquaresY, squareS);  // Top Square 3
  
  //Purple Square Quadrant 1
  fill(purple);
  float pbsquares1Y = 555; // purple Bottom Squares Y
  float ptsquares2Y = 180; // purple top Squares Y
  float psquare1x = 52; // purple Square 1 Xs
  float psquare2x = 432; //purple  Square 2 Xs
  square(psquare1x, ptsquares2Y, squareS);  // Top Square 1
  square(psquare2x, ptsquares2Y, squareS);  // Top Square 2
  square(psquare1x, pbsquares1Y, squareS);  // Bottom Square 1
  square(psquare2x, pbsquares1Y, squareS);  // Bottom Square 2
  
  //Purple Squares Quadrant 2
  fill(purple);
  float q2ptsquares2Y = 235; // purple top Squares Y
  float q2pbsquares1Y = 605; // purple Bottom Squares Y
  float q2psquare1x = 282; // purple  Square 1 Xs
  float q2psquare2x = 657; // purple  Square 2 Xs
  square(q2psquare1x, q2ptsquares2Y, squareS);  // Top Square 1
  square(q2psquare2x, q2ptsquares2Y, squareS);  // Top Square 2
  square(q2psquare1x, q2pbsquares1Y, squareS);  // Bottom Square 1
  resetMatrix();

  //Purple Circles
  float circleS = 90; // Circle Size
  float tcircleY = 220; //Top circle Height
  float bcircleY = 595; //Bottom Circle Height
  float lcircleX = 608; //Left Circles Position
  float rcircleX = 1000; //Right Circles Position
  circle(lcircleX, tcircleY, circleS); // Top Left
  circle(rcircleX, tcircleY, circleS); // Top Right
  circle(lcircleX, bcircleY, circleS); // Bottom Left
  circle(rcircleX, bcircleY, circleS); // Bottom Right
  
  //Black Circle
  fill(black);
  circle(615, 725, 45);
  
  //Small lavender circle
  fill(lavender);
  circle(560, 370, 30);

  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if (frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
