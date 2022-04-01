// pmouseX, pmouseY
float ppmouseX, ppmouseY;

void setup() {
  size(500, 500);
  strokeWeight(8);
  frameRate(10);
  ppmouseX = 0;
  ppmouseY = 0;
}

void draw() {
  background(128);
  line(mouseX, mouseY, pmouseX, pmouseY);
  line(pmouseX, pmouseY, ppmouseX, ppmouseY);
  ppmouseX = pmouseX;
  ppmouseY = pmouseY;
}
