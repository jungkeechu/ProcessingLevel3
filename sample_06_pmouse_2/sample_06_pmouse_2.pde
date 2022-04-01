// pmouseX, pmouseY

void setup() {
  size(500, 500);
  strokeWeight(8);
}

void draw() {
  int speed;
  
  background(128);
  speed = abs(mouseX-pmouseX) + abs(mouseY-pmouseY);
  
  ellipse(width/2, height/2, speed*10, speed*10);
}
