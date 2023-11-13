color orange, yellow, wine, purple; 
PVector A, B, C, D;
void setup () {
  println("This is a screensaver :)");
  fullScreen(); 
  // Choose a color palet and plug in https://lospec.com/palette-list
  orange = #914e3c;
  yellow = #c7955c;
  wine = #693540;
  purple = #3a213a;
  background(#3a213a);
  
}
void draw () {
  noStroke();
  frameRate(8);
  // Makes all the points random
  A = new PVector (random(width+random(-100,100)), random(height+random(-100,100))); 
  B = new PVector (random(width+random(-100,100)), random(height+random(-100,100))); 
  C = new PVector (random(width+random(-100,100)), random(height+random(-100,100))); 
  D = new PVector (random(width+random(-100,100)), random(height+random(-100,100))); 
  //Sets a random size to the points
  float SizeA = random(1, 180); 
  float SizeB = random(1, 180);  
  float SizeC = random(1, 180); 
  float SizeD = random(1, 180); 
  //Circle A
  fill(lerpColor(wine, purple, random(0, 1))); // Mixes the colors
  circle(A.x, A.y, SizeA);
  //Circle B
  fill(lerpColor(orange, wine, random(0, 1))); // Mixes the colors
  circle(B.x, B.y, SizeB);
  //Circle C
  fill(lerpColor(orange, yellow, random(0, 1))); // Mixes the colors
  circle(C.x, C.y, SizeC);
  //Circle D
  fill(lerpColor(yellow, wine, random(0, 1))); // Mixes the colors
  circle(D.x, D.y, SizeD);
  // Shades the canvas 
  fill(#3a213a, 2);    // makes so old shapes start to fade. 
  rect(0 , 0, width , height);    // makes so old shapes start to fade. 
 
  // Saves an image after the screen saver runs 60 frames. 
  if (frameCount == 60) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}


  
