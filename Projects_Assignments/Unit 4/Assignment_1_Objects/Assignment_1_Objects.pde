PVector lSide, rSide, mid;
PFont gothicB;
PFont gothicL;
String [] texts = {"don't bring a sword sword sword".toUpperCase(), // Crossbow Bottom Front Left [0]
                   "to a crossbow fight fight fight".toUpperCase(), // Crossbow Bottom Front Right [1]
                   "I used to be an adventurer like you".toUpperCase(), //Crossbow Middle Front Left [2]
                   "but I took an arrow to the knee".toUpperCase(), //Crossbow Middle Front Right [3]
                   "string", "string string", "string string string".toUpperCase(), // Crossbow String [4,5,6]
                   "ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW", // Crossbow Stock Middle [8]
                   "BUTT STOCK BUTT STOCK BUTT STOCK BUTT STOCK BUTT" }; // Crossbow Stock Outisde[7]
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
  // Crossbow Bottom Front [0 ~ 1]
  translate(width/2, height/2);
  // Let Side
  rotate(TAU * - 0.015);
  text(texts[0], rSide.x + -355, rSide.y + -36);
  // Right Side
  rotate(TAU * 0.030);
  text(texts[1], rSide.x + 92, rSide.y + -36 );
  resetMatrix();

  textSize(20);
  // Crossbow String [4,5,6]
  translate(width/2, height/2);
  //Left Strings (Ordered from left to Right)
  rotate(TAU * -0.131);
  text(texts[5], lSide.x+ -2, rSide.y + -184);
  rotate(TAU * 0.019);
  text(texts[6], lSide.x+ 88, rSide.y + -153);
  rotate(TAU * 0.029);
  text(texts[4], lSide.x+ 278, rSide.y + -148);
  // Top Middle String
  rotate(TAU * 0.080);
  text(texts[5], lSide.x+ 183, rSide.y + -166);
  resetMatrix();
  //Right Strings (Ordered from left to Right)
  translate(width/2, height/2);
  rotate(TAU * 0.073);
  text(texts[4], lSide.x+ 158, rSide.y + -148);
  rotate(TAU * 0.029);
  text(texts[6], lSide.x+ 165, rSide.y + -154);
  rotate(TAU * 0.037);
  text(texts[5], lSide.x+ 304, rSide.y + -200);
  resetMatrix();

  // Crossbow Stock Middle [7]
  translate(width/2, height/2);
  // Left Side
  rotate(TAU * -0.250);
  text(texts[7], mid.x -941, mid.y);
  // Right Side
  rotate(TAU * 0.500);
  text(texts[7], mid.x -852, mid.y -3);
  resetMatrix();

  textFont(gothicB);
  //Crossbow Middle Front [2 ~ 3]
  translate(width/2, height/2);
  // Left Side
  rotate(TAU* -0.080);
  text(texts[2], lSide.x + -97, lSide.y + 0);
  // Right Side
  rotate(TAU* 0.170);
  text(texts[3], rSide.x + -26, rSide.y + 0);
  resetMatrix();

  // Crossbow Stock Outside [8]
  translate(width/2, height/2);
  // Left Side
  rotate(TAU * -0.255);
  text(texts[8], mid.x -944, mid.y + -20);
  // Right Side
  rotate(TAU * 0.509);
  text(texts[8], mid.x -709, mid.y -20);
  resetMatrix();
}
