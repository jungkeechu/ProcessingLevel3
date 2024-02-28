// How to use image files.

PImage img;

void setup() {
  size(600, 900);
  img = loadImage("apple.png");
  image(img, 0, 0);
  //image(img, 0, 0, 200, 200);
  imageMode(CENTER);
}

void draw() {
  background(255);
  //image(img, 0, 0, mouseX, mouseY);
  image(img, mouseX, mouseY);
}
