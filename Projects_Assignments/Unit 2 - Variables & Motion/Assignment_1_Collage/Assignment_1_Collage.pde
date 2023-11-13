//Alright, let's try this collage thingy :)
PImage spaceship;
color night, ray, stars; 
PFont calm;

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

void draw(){
  background(night);  
  //Abduction Ray (AR)
  float topAR = 271; 
  float lowAR = 802;
  PVector anchorTL = new PVector(246, topAR);
  PVector anchorTR = new PVector(354, topAR);
  PVector anchorBL = new PVector(0, lowAR);
  PVector anchorBR = new PVector(600, lowAR);
  noStroke(); 
  fill(ray);
  quad(anchorTL.x, anchorTL.y,
       anchorTR.x, anchorTR.y,
       anchorBR.x, anchorBR.y,
       anchorBL.x, anchorBL.y);       
  //Pixel art alien space ship that I made
  image(spaceship, 150, 50);
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
  //Stars - the points are ordered by the Y axis - they were randomply plotted... It's a pain to organize.....
  scale(4); 
  stroke(stars); 
  //top half
  point(85,6); // 1
  point(14,8);  // 2
  point(44,20);// 3
  point(124,25); // 4
  //Middle 
  point(15,48);// 5
  point(143,53);// 6
  point(107,72);// 7
  point(42,76);  // 8
  //Bottom Half
  point(22,99); //9
  point(131,100);// 10
  point(142,131);// 11
  point(15,138);// 12
  
  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if (frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
