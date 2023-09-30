 //This will serve as float numbers to randomize every color
 float PointAH, PointBH, PointCH, PointDH;
 float PointAS, PointBS, PointCS, PointDS;
 float PointAB, PointBB, PointCB, PointDB; 
 PVector A, B, C, D;
 
void setup () {
  println("This is a screensaver :)");
  fullScreen();
  background(255);
  colorMode(HSB, 360, 1, 1);
 
}
void draw () {
  noStroke();
  frameRate(8);
  // sets random coordinates for the circles
  A = new PVector (random(width+random(-100,100)), random(height+random(-100,100))); 
  B = new PVector (random(width+random(-100,100)), random(height+random(-100,100))); 
  C = new PVector (random(width+random(-100,100)), random(height+random(-100,100))); 
  D = new PVector (random(width+random(-100,100)), random(height+random(-100,100))); 
  //Sets a random size to the circles
  float SizeA = random(1, 180); 
  float SizeB = random(1, 180);  
  float SizeC = random(1, 180); 
  float SizeD = random(1, 180); 
  //Sets the hue on the HSB
  PointAH = random(360);
  PointBH = random(360);
  PointCH = random(360);
  PointDH = random(360); 
  //Sets the saturation on the HSB 
  PointAS = random(0,100);
  PointBS = random(0,100);
  PointCS = random(0,100);
  PointDS = random(0,100);
  //Sets the Brightness on the HSB
  PointAB = random(0,100);
  PointBB = random(0,100);
  PointCB = random(0,100);
  PointDB = random(0,100);
  //Circle A
  fill(PointAH, PointAS, PointAB);
  circle(A.x, A.y, SizeA);
  //Circle B
  fill(PointBH, PointBS, PointBB);
  circle(B.x, B.y, SizeB);
  //Circle C
  fill(PointCH, PointCS, PointCB);
  circle(C.x, C.y, SizeC);
  //Circle D
  fill(PointDH, PointDS, PointDB);
  circle(D.x, D.y, SizeD);
  // Shades the canvas 
  fill(#FAFAFA, 10);    // makes so old shapes start to fade. 
  rect(0 , 0, width , height);    // makes so old shapes start to fade. 
  

  
}


  
