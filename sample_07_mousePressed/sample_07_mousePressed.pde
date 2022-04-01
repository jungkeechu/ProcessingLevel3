// mouse Pressed

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  if (mousePressed) {
    fill(0);
  }
  else {
    fill(255);
  }
  
  rect(0, 0, width, height);
}
