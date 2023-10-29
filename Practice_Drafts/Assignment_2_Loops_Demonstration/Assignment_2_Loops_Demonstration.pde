void setup() {
  size(1000, 1000);
  rectMode(CENTER);
}

void draw() {
  background(3);

  //int i = 0;
  //while (i < 320) {
  //line(120, i, 320, i);
  //i = i + 20;

  //}

 
  float gridStep = 0.025;
  
  fill(1);
  square(width/2, height/2, width*0.50);
  noFill();
  stroke(255);
  for ( float y = height * 0.25; y <= height * 0.75; y += height * gridStep) {
    for (float x = width * 0.25; x <= width * 0.75; x += width*gridStep ) {
      resetMatrix();
      translate(x, y); 
      rotate((x + y)*2.88 + frameCount*-0.01); 
      square(0, 0, gridStep * 14.93 * width);
    }
  }
}
