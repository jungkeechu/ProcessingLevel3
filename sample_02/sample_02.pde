// drawing a cross line

void setup() {
  size(600, 600);
  stroke(255);
}

void draw() {
  background(128);
  line(mouseX, 0, mouseX, width); // horizontal line
  line(0, mouseY, width, mouseY);  // vertical line
  noFill();
  ellipse(mouseX, mouseY, 20, 20);
}
