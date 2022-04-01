float x, y;
float bx, by;
float easing = 0.05;
float easing2 = 0.03;

void setup(){
  size(600, 600);
  x = width/2;
  y = height/2;
  bx = width/2;
  by = height/2;
}

void draw(){
  background(128);
  x += (mouseX - x) * easing;
  y += (mouseY - y) * easing;
  ellipse(x, y, 100, 100);
  
  bx += (x - bx) * easing2;
  by += (y - by) * easing2;
  ellipse(bx, by, 30, 30);
}
