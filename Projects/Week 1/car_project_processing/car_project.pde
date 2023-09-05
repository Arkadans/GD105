// this program makes a cute car inspired by a military hummvee
// using points and lines
// see: https://mbalousek.notion.site/105-Lec-01-Getting-Started-b7d4155b87f8456292fd46160496474b?pvs=4
// — mrfb 2023-08-27

void setup() {
  size(1024, 1024);
}

void draw() {
  // having background in draw() means we don't see
  // the old lines, particularly in tweak mode
  
  // black paper, white ink
  background(0);
  stroke(255);
  
  // The sound the car makes 
  println("vrooom, vrooom!");

  // define all the points
  PVector leftWheel = new PVector(241, 500);
  PVector rightWheel = new PVector(760, 500);
  
  PVector rear1 = new PVector(130, 475);
  PVector rear2 = new PVector(130, 350);
  PVector rear3 = new PVector(550, 350);
  
  PVector roof1 = new PVector(650, 230);
  PVector roof2 = new PVector(360, 230);
  PVector roof3 = new PVector(130, 350); 
 
  PVector front1 = new PVector(550, 350);
  PVector front2 = new PVector(880, 350);
  PVector front3 = new PVector(880, 475);
  
  PVector window1 = new PVector(650, 233); 
  PVector window2 = new PVector(650, 350); 
  
  PVector floor1 = new PVector(360, 475); 
  PVector floor2 = new PVector(650, 475);
  
  // wheels 
  strokeWeight(161);
  point(leftWheel.x, leftWheel.y);
  point(rightWheel.x, rightWheel.y);
  
  // rear or trunk 
  strokeWeight(10);
  line(rear1.x, rear1.y, rear2.x, rear2.y);
  line(rear2.x, rear2.y, rear3.x, rear3.y);
  
  //roof 
  strokeWeight(10);
  line(roof1.x, roof1.y, roof2.x, roof2.y);
  line(roof2.x, roof2.y, roof3.x, roof3.y);
  
  //front
  strokeWeight(10);
  line(front1.x, front1.y, front2.x, front2.y);
  line(front2.x, front2.y, front3.x, front3.y);
  
  //front window
  strokeWeight(10); 
  line(window1.x, window1.y, window2.x, window2.y); 
  
  //floor
  strokeWeight(10); 
  line(floor1.x, floor1.y, floor2.x, floor2.y); 
  
  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if(frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
