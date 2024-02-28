// drawing a cross line

void setup() {
  size(600, 600);
  stroke(255);
}

void draw() {
  background(128);
  line(mouseX, 0, mouseX, height); 
  line(0, mouseY, width, mouseY);  
  noFill();
  ellipse(mouseX, mouseY, 20, 20);
  
  if (mousePressed){
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 100, 100);
  }
}
