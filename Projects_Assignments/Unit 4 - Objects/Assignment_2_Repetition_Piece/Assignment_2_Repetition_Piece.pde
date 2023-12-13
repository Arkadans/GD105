PImage car;
PImage bground;
PGraphics mask;
PGraphics maskA;

void setup() {
  size(1280, 720);
  //This screenshot was taken by me on Forza Horizon 5.
  bground = loadImage("FullBessy.png");
  bground.resize(width, height);
  bground.filter(BLUR, 1);
  //This screenshot was taken by me on Forza Horizon 5.
  car = loadImage("Bessy.png");
  car.resize(width/2, height/2);
  car.filter(POSTERIZE, 5);
 
  mask = createGraphics(width, height);
  maskA = createGraphics(width/2, height/2);
}

void draw() {
  // Masks the Background
  mask.beginDraw();
  mask.noStroke();
  mask.background(223, 10);
  mask.fill(0, 100.0);
  mask.square(0, 0, width);
  mask.endDraw();
  
  if (frameCount == 0) {
    mask.get().save("mask.png");
  }
  bground.mask(mask.get());
  image(bground, 0, 0);

  // Masks the 4 cars
  maskA.beginDraw();
  maskA.noStroke();
  maskA.background(255, 32);
  maskA.fill(0, 98.8);
  maskA.square(325, 20, 300);
  maskA.square(5, 20, 300);
  maskA.endDraw();
  if (frameCount == 0) {
    maskA.get().save("maskA.png");
  }
  car.mask(maskA.get());
  //the 4 cars
  image(car, 0, 0);
  image(car, width/2, 0);
  image(car, 0, height/2);
  image(car, width/2, height/2);

  // Saves a picture of the final image produced
  if (frameCount == 50) {
    String filename = "output";
    save(filename + ".png");
    print("canvas saved as " + filename + ".png");
  }
}
