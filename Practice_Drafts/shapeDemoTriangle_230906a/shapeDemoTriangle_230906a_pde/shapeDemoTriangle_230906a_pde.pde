// runs at the start
void setup () {
  size (1024, 1024);
  colorMode(HSB, 360, 100, 100); 
}

// runs once every frame
void draw () {
  background (180);

  // rgb triplet
  stroke(134, 222, 196);



  PVector anchorTL = new PVector(width*0.25, height*0.25);
  PVector anchorTR = new PVector(width*0.75, height*0.25);
  PVector anchorCT = new PVector(width*0.50, height*0.48);
  PVector anchorBL = new PVector(width*0.25, height*0.75);
  PVector anchorBR = new PVector(width*0.75, height*0.75);

  stroke(#FFEE9B);
  fill(#207C30);
  strokeWeight(30);
  
  //point(anchorCT.x +75, anchorCT.y);
  //point(anchorCT.x -75, anchorCT.y);
  
  //line(anchorTL.x, anchorTL.y, 
  //     anchorTR.x, anchorTR.y); 
  
  //triangle(anchorCT.x, anchorCT.y, 
  //         anchorBL.x, anchorBL.y, 
  //         anchorBR.x, anchorBR.y);
  
  quad(anchorTL.x, anchorTL.y,
       anchorTR.x, anchorTR.y, 
       anchorBR.x, anchorBR.y,
       anchorBL.x, anchorBL.y);
       
}
