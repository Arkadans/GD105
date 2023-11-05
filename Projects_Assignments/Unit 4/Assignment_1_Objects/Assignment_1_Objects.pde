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
  rotate(TAU* -0.080);
  text("I used to be an adventurer like you".toUpperCase(), lSide.x, lSide.y);
  rotate(TAU* 0.170);
  text("but I took an arrow to the knee".toUpperCase(), rSide.x, rSide.y);
  resetMatrix();
  
  // Front Part 2 
  
  // Front Part 3
 
  // Left Side 
  
  // Right Side
  
  //Arrow
  translate(width/2, height/2);
  rotate(TAU * -0.250);
  text("ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW", mid.x -875, mid.y);
  rotate(TAU * 0.500);
  text("ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW ARROW", mid.x -720, mid.y -4);

  
}
