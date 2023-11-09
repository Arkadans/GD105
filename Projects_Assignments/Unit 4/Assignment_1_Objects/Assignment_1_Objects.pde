// Look for arrays of strings for the textcs, and maybe pvectors for the positions.
// Could use Z component of pvector for rotation


PVector lSide, rSide, mid;
PFont gothicB;
PFont gothicL;

void setup() {
  size(1000, 1000);
  println("This is art is a response to this piece from Fatima Queiroz");
  // Link to the art: https://fatimaqueiroz.tumblr.com/image/171012866162
  gothicB = loadFont("CopperplateGothic-Bold-20.vlw");
  gothicL = loadFont("CopperplateGothic-Light-20.vlw");
}

void draw() {
  background(255);
  fill(0);

  lSide = new PVector(-253, -200);
  rSide = new PVector(-96, -195);
  mid = new PVector(500, 0);

  textFont(gothicL);
  textSize(23);
  //Mid front aka Dont bring sword...
  translate(width/2, height/2);
  // Let Side
  rotate(TAU * - 0.015);
  text("don't bring a sword sword sword".toUpperCase(), rSide.x + -355, rSide.y + -36);
  // Right Side
  rotate(TAU * 0.030);
  text("to  a crossbow fight fight fight".toUpperCase(), rSide.x + 92, rSide.y + -36 );
  resetMatrix();

  textSize(20);
  // Top Front aka STTRING
  translate(width/2, height/2);
  //Left Side
  rotate(TAU * -0.131);
  text("string string".toUpperCase(), lSide.x+ -2, rSide.y + -184);
  rotate(TAU * 0.019);
  text("string string string".toUpperCase(), lSide.x+ 88, rSide.y + -153);
  rotate(TAU * 0.029);
  text("string".toUpperCase(), lSide.x+ 278, rSide.y + -148);
  rotate(TAU * 0.080);
  text("string string".toUpperCase(), lSide.x+ 172, rSide.y + -166);
  resetMatrix();
  //Right Side
  translate(width/2, height/2);
  rotate(TAU * 0.073);
  text("string".toUpperCase(), lSide.x+ 160, rSide.y + -148);
  rotate(TAU * 0.029);
  text("string string string".toUpperCase(), lSide.x+ 165, rSide.y + -154);
  rotate(TAU * 0.037);
  text("string string".toUpperCase(), lSide.x+ 304, rSide.y + -200);
  resetMatrix();

  // Mid Body aka Arrow
  translate(width/2, height/2);
  // Left Side
  rotate(TAU * -0.250);
  text("ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW", mid.x -941, mid.y);
  // Right Side
  rotate(TAU * 0.500);
  text("ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW", mid.x -852, mid.y -3);
  resetMatrix();

  textFont(gothicB);
  // Bottom front aka I used to be an....
  translate(width/2, height/2);
  // Left Side
  rotate(TAU* -0.080);
  text("I used to be an adventurer like you".toUpperCase(), lSide.x + -97, lSide.y + 0);
  // Right Side
  rotate(TAU* 0.170);
  text("but I took an arrow to the knee".toUpperCase(), rSide.x + -26, rSide.y + 0);
  resetMatrix();

  // Outside body aka Butt Stock
  translate(width/2, height/2);
  // Left Side
  rotate(TAU * -0.255);
  text("BUTT STOCK BUTT STOCK BUTT STOCK BUTT STOCK BUTT", mid.x -944, mid.y + -20);
  // Right Side
  rotate(TAU * 0.509);
  text("BUTT STOCK BUTT STOCK BUTT STOCK BUTT STOCK BUTT", mid.x -709, mid.y -20);
  resetMatrix();
}
