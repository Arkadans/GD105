//Alright, let's try this collage thingy :)
PImage spaceship;
color night, ray, stars;
PFont calm;
PVector star1, star2, star3, star4, star5, star6, star7, star8, star9, star10, star11, star12;
PVector anchorTL, anchorTR, anchorBL, anchorBR;

void setup() {
  size(600, 800);
  println("This is my own version of the keep calm meme, utilizing a simple space ship made by me :p");
  spaceship = loadImage("spaceship.png");
  calm = loadFont("AgencyFB-Bold-48.vlw");
  //colours
  night = #1f1a24;
  ray = #decb9f;
  stars = #eeecde;
}

void draw() {
  background(night);  
  
  //Abduction Ray (AR)
  float topAR = 271;
  float lowAR = 802;
  anchorTL = new PVector(246, topAR);
  anchorTR = new PVector(354, topAR);
  anchorBL = new PVector(0, lowAR);
  anchorBR = new PVector(600, lowAR);
  noStroke();
  fill(lerpColor(ray, stars, random(0.0 , 0.1))); // Makes it flicker
  quad(anchorTL.x, anchorTL.y,
    anchorTR.x, anchorTR.y,
    anchorBR.x, anchorBR.y,
    anchorBL.x, anchorBL.y);
      
  //Text Saying Keep Calm
  float fAlign = 300;
  textAlign(CENTER);
  textFont(calm);
  fill(night);
  textSize(65); // Size for Keep
  text("KEEP", fAlign, 355);
  textSize(75); // Size for Calm
  text("CALM", fAlign, 445);
  textSize(60); // Size for AND
  text("AND", fAlign, 535);
  textSize(85); // Size for Explore
  text("EXPLORE", fAlign, 650);
  textSize(95); // Size for The Universe
  text("THE UNIVERSE", fAlign, 765);
  
  //Pixel art alien space ship that I made
  //image(spaceship, 150, 50);
  
 
  // Animated Stars
  star1 = new  PVector (random(0, width/2), random(0, 50));
  star2 = new  PVector (random(0, width/2), random(0, 50));
  star3 = new  PVector (random(width/2, width), random(0, 50));
  star4 = new  PVector (random(width/2, width), random(0, 50));
  star5 = new  PVector (random(0, width/3), random(0, 50));
  star6 = new  PVector (random(0, width/3), random(0, 50));
  star7 = new  PVector (random(width/3, width), random(0, 50));
  star8 = new  PVector (random(width/3, width), random(0, 50));
  star9 = new  PVector (random(0, width/4),  random(0, 50));
  star10 = new  PVector (random(0, width/4), random(0, 50));
  star11 = new  PVector (random(width/4, width), random(0, 50));
  star12 = new  PVector (random(width/4, width), random(0, 50));

  frameRate(1); 
  scale(4);
  stroke(stars);
  point(star1.x, star1.y); 
  point(star2.x, star2.y); 
  point(star3.x, star3.y); 
  point(star4.x, star4.y); 
  point(star5.x, star5.y); 
  point(star6.x, star6.y); 
  point(star7.x, star7.y); 
  point(star8.x, star8.y); 
  point(star9.x, star9.y); 
  point(star10.x, star10.y); 
  point(star11.x, star11.y); 
  point(star12.x, star12.y); 
  
  // Static Stars
  point(15,48);// 5
  point(143,53);// 6
  point(107,72);// 7
  point(42,76);  // 8
  point(22,99); //9
  point(131,100);// 10
  point(142,131);// 11
  point(15,138);// 12
  resetMatrix();
   //Pixel art alien space ship that I made
  image(spaceship, 150, 50);
  


  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if (frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
