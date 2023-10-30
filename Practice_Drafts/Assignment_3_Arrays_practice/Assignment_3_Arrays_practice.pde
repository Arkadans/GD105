int numCircles = 40;

//declaration
int[] sizes;
float[] orbits;
float[] animationSpeeds;
float[] offsets;
color[] colors;
PVector[] circles;

color[] pallete = {#C16060, #7E60C1, #60C172, #4036B2, #FFBF00, #535850};

void setup() {
  size(1000, 1000);
  noStroke();
  println("This art piece is inspired by 'Visual Echo Experiment, 211' by Chul-Hyun Ahn");
  //https://www.artsy.net/artwork/chul-hyun-ahn-visual-echo-experiment"

  //allocate
  sizes = new int[numCircles];
  orbits = new float[numCircles];
  animationSpeeds = new float[numCircles];
  offsets = new float[numCircles];
  colors = new color[numCircles];
  circles = new PVector[numCircles];

  //initialize
  for (int i = 0; i < sizes.length; i++) {
    sizes[i] = (int)random(100, 250);
    orbits[i] = 250 -sizes[i]; 
    animationSpeeds[i] = random(0.01, 0.1);
    offsets[i] = random(TAU);
    circles[i] = new PVector (random(width), random(height));
    
    float rFloat = random(pallete.length); // [0..6)
    int randomIndex = (int)rFloat; // {0.. 5}
    colors[i] = pallete[randomIndex];
  }
  
}

void draw() {
  background(0);

  //Using the arrays
  for (int i = 0; i < numCircles; i++) {
    fill(colors[i]);
    circle(circles[i].x + cos(frameCount * animationSpeeds[i] + offsets[i]) * orbits[i], 
           circles[i].y + sin(frameCount * animationSpeeds[i] + offsets[i]) * orbits[i], 
           sizes[i]);
  }
  
}
