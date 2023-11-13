color[] colors; 

void setup() {
  size(1000, 1000);
  println("This art piece is inspired by 'Visual Echo Experiment, 2011' by Chul-Hyun Ahn");
  //Link to the original piece: https://www.artsy.net/artwork/chul-hyun-ahn-visual-echo-experiment"
  rectMode(CENTER);
  
  colors = new color[4];
  colors[0] = #FF0D7E; // Pink
  colors[1] = #B3F000; // Green
  colors[2] = #12FFF1; // Blue
  colors[3] = #FF7708; // Orange
}
void draw() {
  background(#000000);
  noStroke();

  int maxMove = 200; 
  int maxFade = 0; 
  int maxSize = 450;
  
  for (int move = 0; move < maxMove; move++) { // Controlls the movement torwards the center
    for (int fade = 100; fade > maxFade; fade++) { // Controlls the level of fade on each color
      for (int sizes = 0; sizes < maxSize; sizes++) { // Controlls how many times the squares changes size
      
        // Top Left Solid Square
        noStroke();
        fill(colors[0], fade);
        square((width/2) - move, (height/2) - move, sizes);

        // Top Right Solid Square
        fill(colors[1], fade);
        square((width/2) + move, (height/2) - move, sizes);

        // Bottom Left Solid  Square
        fill(colors[2], fade);
        square((width/2) - move, (height/2) + move, sizes);

        // Bottom Right solid Square
        fill(colors[3], fade);
        square((width/2) + move, (height/2) + move, sizes);

        // outline squares      
        noFill();       
        // Top Left outline Square
        stroke(colors[0]);
        square((width/4), (height/4), sizes);

        // Top Right outline Square
        stroke(colors[1]);
        square((width/1.35), (height/4), sizes);

        // Bottom Left outline Square
        stroke(colors[2]);
        square((width/4), (height/1.35), sizes);

        // Bottom Right outline Square
        stroke(colors[3]);
        square((width/1.35), (height/1.35), sizes);

        // lets you change how the art looks
        move = move + 31; // Controlls the movement torwards the center
        fade = fade -10; //(-1 ~ -100): Controlls the level of fade on each color 
        sizes = sizes + 55; // Controlls how many times the squares changes size
      }
    }
  }
  if (frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
