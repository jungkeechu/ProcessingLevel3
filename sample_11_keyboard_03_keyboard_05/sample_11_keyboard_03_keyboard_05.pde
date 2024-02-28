color value = color(128);

void setup() {
  size(500, 500);
}

void draw() {
  fill(value);
  rect(100, 100, width-200, height-200);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      value = 255;
    } else if (keyCode == DOWN) {
      value = 0;
    } 
  } else {
    value = 128;
  }
}
