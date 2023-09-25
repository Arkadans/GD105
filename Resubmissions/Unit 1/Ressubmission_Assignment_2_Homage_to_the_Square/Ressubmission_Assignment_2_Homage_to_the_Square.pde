// On this resubmission I basically started from the ground up using squares and a 1000x1000 canvas size. I also removed the outher square, that was in reality the frame of the picture. Instead I opted for just having the bacgkround set at a color for the outher square. 
void setup () {
  size (1000, 1000);
  println("This is a recreation of the painting: Untitled, from 'Homage au Carré', by Josef Albers, 1966");
  // Link of the painting: https://www.metmuseum.org/art/collection/search/426198
}

void draw () {
  //Outside Square 
  background (#6f7072);
  //Red Square
  noStroke();
  fill(#765a5e);
  square(100, 150, 800);
  //Black Square
  fill(#2f3032);
  square(300, 450, 400);

  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if (frameCount == 1) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
