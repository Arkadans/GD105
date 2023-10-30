color pink, green, blue, orange;
void setup() {
  size(1000, 1000);
  println("This art piece is inspired by 'Visual Echo Experiment, 2011' by Chul-Hyun Ahn");
  //https://www.artsy.net/artwork/chul-hyun-ahn-visual-echo-experiment"
  rectMode(CENTER);
  pink = #FF0D7E;
  green = #B3F000;
  blue = #12FFF1;
  orange = #FF7708;
}
void draw() {
  background(#000000);
  noStroke();
  float maxMove = 200;
  float maxFade = 0;
  float maxSize = 450;
  for (float move = 0.00; move < maxMove; move++) { // Controlls the movement torwards the center
    for (float fade = 100; fade > maxFade; fade++) { // Controlls the level of fade on each color
      for (float sizes = 0; sizes < maxSize; sizes++) { // Controlls how many times the squares changes size
        // Top Left Solid Square
        noStroke();
        fill(pink, fade);
        square((width/2) - move, (height/2) - move, sizes);
        // Top Right Solid Square
        noStroke();
        fill(green, fade);
        square((width/2) + move, (height/2) - move, sizes);
        // Bottom Left Solid  Square
        noStroke();
        fill(blue, fade);
        square((width/2) - move, (height/2) + move, sizes);
        // Bottom Right solid Square
        noStroke();
        fill(orange, fade);
        square((width/2) + move, (height/2) + move, sizes);
        // outline squares
        // floats sA and sB lets you move the outline squares around
        float sA = 4; 
        float sB = 1.35;
        noFill();
        // Top Left outline Square
        stroke(pink);
        square((width/sA), (height/sA), sizes);
        // Top Right outline  Square
        stroke(green);
        square((width/sB), (height/sA), sizes);
        // Bottom Left outline  Square
        stroke(blue);
        square((width/sA), (height/sB), sizes);
        // Bottom Right outline Square
        stroke(orange);
        square((width/sB), (height/sB), sizes);
        // lets you change how the art looks
        move = move + 31.0; // Controlls the movement torwards the center
        fade = fade -10.0; // Controlls the level of fade on each color
        sizes = sizes + 55.0; // Controlls how many times the squares changes size
      }
    }
  }
}
