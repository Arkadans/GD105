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

  //Single no fill triangle, this triangle is here because it's below everything. 
  float striangleH = 383; // Single Triangle height
  noFill();
  stroke(black);
  strokeWeight(4);
  triangle(580, 470,
           485, striangleH,
           675, striangleH);

  //Bottom Right Purple Square - this square is here because it's below everything.
  noStroke();
  fill(purple); 
  square(650, 610, 100);

  //Off-set Black Line
  strokeWeight(4);
  stroke(black);
  line(700,  555, 790, 465);
  
  // Black Lines
  PVector lineB1 = new PVector (412, 792);  // Starting Point 1 
  PVector lineT1 = new PVector (502, 702); // End Point 1
  PVector lineB2 = new PVector (600, 979); // Starting POint 1
  PVector lineT2 = new PVector (690, 882); // Start POint 2
  //Top Black Line 1 
  line(lineB1.x, lineB1.y, lineT1.x, lineT1.y);
  //Top Black Line 2
  line(lineB2.x, lineB1.y, lineT2.x, lineT1.y);
  //Bottom Black LIne 1
  line(lineB1.x, lineB2.y, lineT1.x, lineT2.y);
  //Bottom Black Line 2
  line(lineB2.x, lineB2.y, lineT2.x, lineT2.y);
  //Purple Line Tilted
  stroke(purple);
  line(708, 0, 882, 174);
  //Purple Line Small
  line(605, 525, 650, 480);
  //Blue Line
  stroke(blue);
  line(535, 170, 625, 80);
  
  //Anchors for the black fill and no fill triangles. 
  float btriangleH = 63;
  PVector originT = new PVector(208, 150); // Triangle Origin
  PVector topLT = new PVector(110, btriangleH); // Top Left Triangle
  PVector topRT  = new PVector(306, btriangleH); // Top Right Triangle 
  //Straight line with three triangles #1 (going left to right)
  noFill();
  stroke(black);
  strokeWeight(10);
  //Triangle 1
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 2
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 3
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 4
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);           
  //Straight line with three triangles #2 (going left to right)
  //Triangle 1
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 2
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 3
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 4
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);             
  //Straight line with three triangles #3 (going left to right)
  //Triangle 1
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 2
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 3
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 4
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);             
  //Straight line with three triangles #4 (going left to right)
  //Triangle 1
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 2
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 3
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Triangle 4
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
             
  //Black Triangles
  fill(black);
  noStroke(); 
  //Top Left Black Triangle
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Top Right Black Triangle
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Bottom Left Black Triangle
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
  //Bottom Right Black  Triangle)
  triangle(originT.x, originT.y,
             topRT.x, topRT.y,
             topLT.x, topLT.y);
             
  //Black Rectangle
  rect(0, 420, 550, 200);
  
  //Medium no fill purple Triangle - Facing East
  noFill();
  strokeWeight(2);
  stroke(purple);
   triangle(1, 1,
            1, 1,
            1, 1); 
  //Small no fill purple Triangle - Facing West
  triangle(1, 1,
           1, 1,
           1, 1); 
  //Lavender triangle
  fill(lavender);
  triangle(1, 1,
           1, 1,
           1, 1); 
           
  //Squares          
  //Small no fill lavender square
  noFill();
  stroke(lavender);
  strokeWeight(3.5); 
  square(135, 534, 20); 
  //Black Squares Line
  noStroke();
  fill(black); 
  float squareS = 100; // Square Size 
  float bbsquaresY = 280; // Black Bottom Squares Y 
  float btsquaresY = -98; // Black top Squares Y
  float bsquare1x = 50; // Black Square 1 Xs 
  float bsquare2x = 240; //Black  Square 2 Xs
  float bsquare3x = 430; // Black Square 3 Xs 
  square(bsquare1x, bbsquaresY,squareS);  // Bottom Square 1
  square(bsquare2x, bbsquaresY,squareS);  // Bottom Square 2
  square(bsquare3x, bbsquaresY,squareS);  // Bottom Square 3
  square(bsquare1x, btsquaresY,squareS);  // Top Square 1
  square(bsquare2x, btsquaresY,squareS);  // Top Square 2
  square(bsquare3x, btsquaresY,squareS);  // Top Square 3
 //Purple Square Quadrant 1
  fill(purple);
  float pbsquares1Y = 555; // purple Bottom Squares Y 
  float ptsquares2Y = 180; // purple top Squares Y
  float psquare1x = 52; // purple Square 1 Xs 
  float psquare2x = 432; //purple  Square 2 Xs
  square(psquare1x, ptsquares2Y,squareS);  // Top Square 1
  square(psquare2x, ptsquares2Y,squareS);  // Top Square 2
  square(psquare1x, pbsquares1Y,squareS);  // Bottom Square 1
  square(psquare2x, pbsquares1Y,squareS);  // Bottom Square 2
  //Purple Squares Quadrant 2
  fill(purple);
  float q2ptsquares2Y = 235; // purple top Squares Y
  float q2pbsquares1Y = 605; // purple Bottom Squares Y 
  float q2psquare1x = 282; // purple  Square 1 Xs 
  float q2psquare2x = 657; // purple  Square 2 Xs
  square(q2psquare1x, q2ptsquares2Y,squareS);  // Top Square 1
  square(q2psquare2x, q2ptsquares2Y,squareS);  // Top Square 2
  square(q2psquare1x, q2pbsquares1Y,squareS);  // Bottom Square 1

  //Purple Circles
  float circleS = 100; // Circle Size
  float tcircleY = 220; //Top circle Height
  float bcircleY = 595; //Bottom Circle Height
  float lcircleX = 625; //Left Circles Position
  float rcircleX = 1000; //Right Circles Position 
  circle(lcircleX, tcircleY, circleS); // Top Left
  circle(rcircleX, tcircleY, circleS); // Top Right
  circle(lcircleX, bcircleY, circleS); // Bottom Left
  circle(rcircleX, bcircleY, circleS); // Bottom Right
  //Black Circle
  fill(black);
  circle(650, 720, 45);
  //Small lavender circle
  fill(lavender);
  circle(585, 360, 30); 


  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if (frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
