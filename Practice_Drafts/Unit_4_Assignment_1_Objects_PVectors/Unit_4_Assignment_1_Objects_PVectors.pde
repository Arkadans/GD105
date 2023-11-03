PVector v1, v2; 

void setup(){
  size(500, 500);
  
  noFill();
  noLoop();
  v1 = new PVector(40, 20);
  v2 = new PVector(25, 50); 
  
}

void draw() {
  
  scale(5);
  
  stroke(#ff0000);
  line (0, 0, v1.x, 0);   
  stroke(#00ff00);
  line(v1.x, 0, v1.x, v1.y);  
  ellipse(v1.x, v1.y, 12, 12);
  stroke(#000000);
 
  ellipse(v2.x, v2.y, 12, 12);

}
