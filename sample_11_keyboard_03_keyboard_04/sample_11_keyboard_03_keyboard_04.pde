void setup() {
  size(500, 500);
}

void draw() {
  fill(0);
  rect(100, 100, width-200, height-200);
}

void keyPressed() {
  if (key >= 'a' && key <= 'z') {
    println(key);
  } else{
    println("OTHER KEY");
  }
}
