PImage saskia;

void setup(){
  size(800,800);
  saskia = loadImage("Saskia_Freeke.png");
}
void draw(){
  scale(0.50); 
  image(saskia, 0, 0);
}
