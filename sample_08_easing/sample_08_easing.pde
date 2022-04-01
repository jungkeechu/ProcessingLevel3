// easing technique

float x;
float y;
float easing = 0.05;

void setup() {
  size(512, 512); 
  noStroke();  
}

void draw() { 
  background(128);
  
  float dx = mouseX - x;
  x += dx * easing;
  
  float dy = mouseY - y;
  y += dy * easing;
  
  ellipse(x, y, 100, 100);
}
