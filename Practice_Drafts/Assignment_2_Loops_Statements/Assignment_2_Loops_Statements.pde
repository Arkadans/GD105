void setup() {
size(1000,1000);
}

void draw() {
  background(255);
  
  //int i = 0;
  //while (i < 320) {
  //line(120, i, 320, i);
  //i = i + 20; 
    
  //}
  
  translate(width/2, height/2); 
  int numLines = 485; 
  for (int i = -85; i < numLines; i++) {
    float spacing = 20.12;
    rotate(TAU/68.7);
    line(-709, i * spacing, 719, i * spacing); 
  }
  
  
  
  
}
