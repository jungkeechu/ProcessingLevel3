// mouse Pressed

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  if (mousePressed) {
    if (mouseButton == LEFT) {
      fill(0); // Black
    } else if (mouseButton == RIGHT) {
      fill(255); // White
    }
  } else {
    fill(128); // Gray
  }
  rect(0, 0, width, height);
}
