void setup() {
  size(500, 500);
}

void draw() {
  if (keyPressed) {
    fill(0);
  } else {
    fill(255);
  }
  rect(100, 100, width-200, height-200);
}
