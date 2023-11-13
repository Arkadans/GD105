//Resubmission tip: Make sure to have only one boolean for color, and one boolean for size. 
//Resubmission tip: Make sure to have all the images included in the end. 
//Resubmission tip: Add another variable, maybe location? 

color accents, mainColor, black;
float fscale; 

// Fan Color
boolean fanBrown = random(1.0) < 0.20;
boolean fanGrey = random(1.0) < 0.50; 
boolean fanNormal = random(1.0) < 0.75;
boolean fanSmall = random(1.0) < 0.50;

void setup() {
  println("This program will make computer fans in three different color combinations and two different sizes:"); 
  size(1024, 1024);
  ellipseMode(CENTER);
  rectMode(CENTER);

  black = #0E0F0F;
  // Controls the color of the fan
  if (fanBrown){
    // makes fan brown and beige
     accents = #653024; // brown 
     mainColor =  #E7ceb5; // beige
     println("Chocolate cookie fan, hmmm delicious!");
  } else if (fanGrey) {
    // makes fan light gray and dark grey 
     accents = #5B6770; // dark gray
     mainColor = #D0d3d4; // light gray
     println("Concret Jungle fan, how boring..."); 
  } else {
     accents = #653024; // brown 
     mainColor = black;
     println("Charcohal and Dirt fan, reminds me of labor"); 
     
  // controls the size of the fan. 
  }
  if (fanNormal){
    fscale = 1;
    println("Regular size, perfect for regular cases!");
  } else if (fanSmall){
    fscale = 0.60;
    println("Small size, perfect for small cases!");
  } else {
    fscale = 1.2;
    println("Gigantic size, are you trying to compesate for something?"); 
  }
}

void draw(){
  background(255);
  
  //Fan Frame 
  scale(fscale);
  strokeWeight(3);
  stroke(accents);
  fill(mainColor);
  square(width/2, height/2, 670);
  
  //fan arc
  fill(255);
  circle(width/2, height/2, 560);
  stroke(black);
  fill(accents);
  
  //bottom blade
  float topB = 546;
  float botB = 757;
  quad(474, topB, 550, topB, 640, botB, 384, botB);
  
  //top  blade
  translate(0, -277);
  quad(474, botB, 550, botB, 640, topB, 384, topB);
  resetMatrix();
  scale(fscale);
  
  //right blade
  quad(topB, 474, topB, 550, botB, 640, botB, 384);
  
  //left Blade
  translate(-277, 0);
  quad(botB, 474, botB, 550, topB, 640, topB, 384);
  resetMatrix ();
  scale(fscale);
  
  //center of fan
  circle(width/2, height/2, 150);
  
  // Fan Corners
  PVector origin = new PVector(-50, -78);
  PVector cornerA = new PVector(50, -78);
  PVector cornerB = new PVector(-50, 20);
  
  stroke(accents);
  translate(228, 256);
  triangle (origin.x, origin.y, cornerA.x, cornerA.y, cornerB.x, cornerB.y);
  resetMatrix();
  scale(fscale);
  
  // top right corner
  translate(768, 228);
  rotate(TAU*0.25);
  triangle (origin.x, origin.y, cornerA.x, cornerA.y, cornerB.x, cornerB.y);
  resetMatrix();
  scale(fscale);
  
  // bottom right corner
  translate(795, 768);
  rotate(TAU*0.50);
  triangle (origin.x, origin.y, cornerA.x, cornerA.y, cornerB.x, cornerB.y);
  resetMatrix();
  scale(fscale);
  
  // bottom left corner
  translate(256, 795);
  rotate(TAU*0.75);
  triangle (origin.x, origin.y, cornerA.x, cornerA.y, cornerB.x, cornerB.y);
  resetMatrix();
}
