void setup() {
  size(1024, 1024);
  println("I am a military humveee");
  println("vrooom, vrooom!");
}

void draw() {
  background(0);
  stroke(255);
  // Adjusts the prorpotions of the car
  float roofT = 230; //Roof Top - How high the top of the roof is.
  float windowF = 650; //Front Window - How forward/backwards the window is.
  float bodyH = 330; //bodyH - How high the body.
  float windowR = 360; //Rear Window - How far the rear window extends. 
  float rear = 130; // How  far is the back end of the car
  float front = 880; // How far is the front of the car 
  float carH = 475; // Car Height - How Low the car is.
  float wheelS = 160; // Wheel Size -  How big the wheels are. 
  float tireH = 25; // Tire Height - How far up or down the tires are.  
  //Points that connect the lines that makes the roof of the car
  PVector roof1 = new PVector(windowF, roofT);
  PVector roof2 = new PVector(windowR, roofT);
  PVector roof3 = new PVector(rear, bodyH);
  PVector roof4 = new PVector(windowF, roofT); 
  PVector roof5 = new PVector(windowF, bodyH); 
  //Points that onnect the lines that makes the booy  of the car
  PVector body1 = new PVector(rear, bodyH);
  PVector body2 = new PVector(front, bodyH);
  PVector body3 = new PVector(front, carH);
  PVector body4 = new PVector(rear, carH);
  PVector body5 = new PVector(rear, bodyH);
  //wheels 
  strokeWeight(wheelS); // How big the tires are
  point(240, carH + tireH); 
  point(760, carH + tireH); 
  //roof 
  strokeWeight(10);
  line(roof1.x, roof1.y, roof2.x, roof2.y);
  line(roof2.x, roof2.y, roof3.x, roof3.y);
  line(roof4.x, roof4.y, roof5.x, roof5.y);
  //Body
  line(body4.x, body4.y, body5.x, body5.y);
  line(body1.x, body1.y, body2.x, body2.y);
  line(body2.x, body2.y, body3.x, body3.y);
  //floor - The floor will align itself with the roof of the car
  line(windowR, carH, windowF, carH); 
  
  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if(frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
