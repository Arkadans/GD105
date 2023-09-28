PImage Saskia_Freeke;
// this image https://64.media.tumblr.com/9ddca62be4c80cf7d03c8155490228bc/9bef6c1cb634bc23-ab/s2048x3072/52e0d8ab3dc47f5f26d4bfd6d3aeef7ed73840b2.png
void setup(){
  size(800, 800);
  Saskia_Freeke = loadImage("Saskia_Freeke.png");
}

void draw(){
  scale(0.5);
  image(Saskia_Freeke, 0, 0);
}
