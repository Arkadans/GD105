PVector lSide, rSide, mid;

void setup() {
  size(1000, 1000);
  println("This is art is a response to this piece from Fatima Queiroz");
  // Link to the art: https://fatimaqueiroz.tumblr.com/image/171012866162
}

void draw() {
  background(255);
  textSize(20);
  fill(0);

  lSide = new PVector(-250, -200);
  rSide = new PVector(-96, -195);
  mid = new PVector(500, 0);

  // Front Part 1
  translate(width/2, height/2);
  // Left Side
  rotate(TAU* -0.080);
  text("I used to be an adventurer like you".toUpperCase(), lSide.x, lSide.y);
  // Right Side
  rotate(TAU* 0.170);
  text("but I took an arrow to the knee".toUpperCase(), rSide.x, rSide.y);
  resetMatrix();

  // Front Part 2
  translate(width/2, height/2);
  // Let Side
  rotate(TAU * - 0.015);
  text("don't bring a sword sword sword".toUpperCase(), rSide.x + -223, rSide.y + -36);
  // Right Side
  rotate(TAU * 0.030);
  text("to  a crossbow fight fight fight".toUpperCase(), rSide.x + 80, rSide.y + -36 );
  resetMatrix();

  // Front Part 3
  translate(width/2, height/2);
  //Left Side
  rotate(TAU * -0.131);
  text("string string".toUpperCase(), lSide.x+ 128, rSide.y + -150);
  rotate(TAU * 0.019);
  text("string string string".toUpperCase(), lSide.x+ 211, rSide.y + -137);
  rotate(TAU * 0.029);
  text("string".toUpperCase(), lSide.x+ 325, rSide.y + -148);
  rotate(TAU * 0.080);
  text("string string".toUpperCase(), lSide.x+ 185, rSide.y + -166);
  resetMatrix();
  //Right Side
  translate(width/2, height/2);
  rotate(TAU * 0.073);
  text("string".toUpperCase(), lSide.x+ 132, rSide.y + -148);
  rotate(TAU * 0.029);
  text("string string string".toUpperCase(), lSide.x+ 117, rSide.y + -137);
  rotate(TAU * 0.037);
  text("string string".toUpperCase(), lSide.x+ 204, rSide.y + -142);
  resetMatrix();
  
  // Outside body
  translate(width/2, height/2); 
  // Left Side
  rotate(TAU * -0.255);
  text("BUTT STOCK BUTT STOCK BUTT STOCK BUTT STOCK BUTT", mid.x -794, mid.y + -20);
  // Right Side
  rotate(TAU * 0.509);
  text("BUTT STOCK BUTT STOCK BUTT STOCK BUTT STOCK BUTT", mid.x -697, mid.y -20);
  resetMatrix();


  // Mid Body 
  translate(width/2, height/2);
  // Left Side
  rotate(TAU * -0.250);
  text("ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW", mid.x -872, mid.y);
  // Right Side
  rotate(TAU * 0.500);
  text("ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW", mid.x -726, mid.y -3);
  resetMatrix();



  //PImage mirror = get(0, 0, width/2, height);
  //translate(width, 0);
  //scale(-1, 1);
  //image(mirror, 0, 0);
}
