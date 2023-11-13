// runs at the start
void setup () {
  size (1024, 1024);
  colorMode(HSB, 360, 100, 100); 
  println("This is a recreation of the painting: Untitled, from 'Homage au Carré', by Josef Albers, 1966");
  // Link of the painting: https://www.metmuseum.org/art/collection/search/426198
}

// runs once every frame
void draw () {
  
  //also acts as a border 
  background (42, 4, 95);
  
  PVector anchorTL = new PVector(width*0.25, height*0.25);
  PVector anchorTR = new PVector(width*0.75, height*0.25);
  PVector anchorCT = new PVector(width*0.50, height*0.48);
  PVector anchorBL = new PVector(width*0.25, height*0.75);
  PVector anchorBR = new PVector(width*0.75, height*0.75);
  
 //Outer Square 
 rectMode(CORNERS);
  noStroke();
  fill(144, 2, 43); 
  rect(anchorTL.x +-222, anchorTL.y +-235, 
       anchorBR.x +222, anchorBR.y +214);
  
 //Center Square 
 rectMode(CORNERS);
  noStroke();
  fill(353, 22, 46); 
  rect(anchorTL.x +-137, anchorTL.y +-100, 
       anchorBR.x +127, anchorBR.y +160);

  //Inner Square
  rectMode(CENTER);
  noStroke();
  fill(191, 10, 19);
  rect(anchorCT.x +0, anchorCT.y +140, 
                 395,           395);
                 
// this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if(frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
