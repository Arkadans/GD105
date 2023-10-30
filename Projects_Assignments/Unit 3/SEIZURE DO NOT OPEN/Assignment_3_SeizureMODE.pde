
void setup() {
  fullScreen();
  println("This art piece is inspired by 'Visual Echo Experiment, 2011' by Chul-Hyun Ahn");
  //https://www.artsy.net/artwork/chul-hyun-ahn-visual-echo-experiment"
  rectMode(CENTER);
  background(0);
}

void draw() {
  background(#000000, 100);
  noStroke();
  float maxMove = 200;
  float maxFade = 200;
  int maxSize = 501;
   for (float move = 0.00; move < maxMove; move++) {
    for (float fade = 100; move < maxFade; fade++){
      for (int sizes = 0; sizes < maxSize; sizes++) {
    // Top Left Solid Square
    fill(#FF0D7E, fade);
    square((width/2) - move, (height/2) - move, sizes);
    // Top Right Solid Square
    fill(#B3F000, fade);
    square((width/2) + move, (height/2) - move, sizes);
    // Bottom Solid  Square
    fill(#12FFF1, fade);
    square((width/2) - move, (height/2) + move, sizes);
    // Bottom solid Square
    fill(#FF7708, fade);
    square((width/2) + move, (height/2) + move, sizes);
    move = move + 34; 
    fade = fade -10.0 + sin(frameCount)*100.00;
    sizes = sizes + 100;  
      }
    }
 }
}
