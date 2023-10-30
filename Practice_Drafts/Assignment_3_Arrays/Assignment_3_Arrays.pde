  //Declaration -> Inicialization  
  int numCircles = 2;
  
  int size1 = 250; 
  color col1 = #123564; 
  PVector circ1 = new PVector(500, 500); 
                //Allocation
  int[] sizes = new  int [numCircles];
  
  

void setup() {
  size(1000, 1000);
  noStroke(); 
  println("This art piece is inspired by 'Visual Echo Experiment, 211' by Chul-Hyun Ahn");
  //https://www.artsy.net/artwork/chul-hyun-ahn-visual-echo-experiment"
}

void draw() {
  background(0);
 
  fill(col1);
  circle(circ1.x, circ1.y, size1); 
  
}
