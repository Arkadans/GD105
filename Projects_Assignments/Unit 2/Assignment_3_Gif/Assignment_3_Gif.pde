color grey, black, green, red, blue, pink;
int frames = 100;
void setup (){
   size(1024, 1024);
   rectMode(CENTER); 
   ellipseMode(CENTER);
   
   grey = #a39d9f;
   black = #181818;
   green = #22b191;
   red = #e65016;
   blue = #a3acd8;
   pink = #d58ebf; 
}

void draw(){
  background(grey);
  strokeWeight(5); 
  noFill();
  stroke(black);
  
  float progress = float(frameCount) / float(frames);
 
  circle(width/2, height/2, 645);
  
  // Triangle
  translate(width/2,height/5);
  rotate(progress * TAU);
  drawBorder();
  stroke(green);
  translate(0,-25);
  triangle(-50 , 50, // Left Side
          0, -35, // Origin  
          50, 50); // Right Side
  resetMatrix();  
  
  // Cross
  translate(width/2, height*0.8);
  rotate(progress * TAU);
  drawBorder(); 
  stroke(blue); 
  line (50, 50, -50, -50); 
  line (50, -50, -50, 50); 
  resetMatrix(); 
  
  // Square
  translate(width/5,height/2);
  rotate(-progress * TAU);
  drawBorder(); 
  stroke(pink);
  square(0, 0, 100);
  resetMatrix();
  
  // Circle 
  translate(width*0.8,height/2);
  drawBorder();
  stroke(red); 
  circle(0, 0, 50 + abs(sin(progress*3)) * 100);  // Opens and closes teh circle 
  resetMatrix();
  
  // saves frames during the first cycle of rotation
  //saveFrame("frames/####.png");
  //println("saved " + frameCount + ".png");

}
// creates the black circle around each shape
void drawBorder(){
  noStroke();
  fill(black); 
  circle(0, 0, 165);
  
  // Saves a picture of the image
  if (frameCount == 60) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}

 
